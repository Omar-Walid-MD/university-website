import axios from "axios";

export function performQuery(table,condition="")
{
    async function query(table,condition="")
    {
        const res = await axios.get(`http://localhost:8000/${table}`,{params:{condition:condition}});
        return res.data;
    }
    return query(table,condition);
}

