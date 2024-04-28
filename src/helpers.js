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

export const makeId = function(length)
{
    let s = "1234567890";
    let id = "";

    for (let i = 0; i < length; i++) {
        let char = s[parseInt(Math.random()*(s.length-1))];
        id += char;
    }

    return id;
}

export const makeUniqueId = function(list,length=5)
{
    let id = "";
    do {
        id = makeId(length)
    } while (list.map((object) => object.id).includes(id));
    
    return id;
}