import { args } from './args';
import { IndexResponse, IndexQuery } from './interfaces';
import * as rm from 'typed-rest-client/RestClient';
import { IRequestQueryParams } from 'typed-rest-client/Interfaces';

const restc: rm.RestClient = new rm.RestClient('scheme-index-url', args.url);

export async function loadPossibleParams(): Promise<string[]> {
    const resp = await restc.get<string[]>(`rest/filterset/${args.filterset}/params`);
    return await resp.result;
}

export async function loadPossibleReturns(): Promise<string[]> {
    const resp = await restc.get<string[]>(`rest/filterset/${args.filterset}/returns`);
    return await resp.result;
}

export async function loadFiltersets(): Promise<string[]> {
    const resp = await restc.get<string[]>('rest/filterset');
    return await resp.result;
}

export async function runIndexQuery(q: IndexQuery, offset: number): Promise<IndexResponse> {
    const queryParameters: IRequestQueryParams = {
        params: {
            rows: args.rows,
            start: offset,
            facet: 'false',
            'return': q.returns,
            param: q.params,
            query: q.query
        }
    };
    const resp = await restc.get<IndexResponse>(`rest/filterset/${args.filterset}/search`, { queryParameters });
    return await resp.result;
}
