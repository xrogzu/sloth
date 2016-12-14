package ${packageName}.service.impl;
import java.util.*;
import ${packageName}.jooq.common.generated.tables.records.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.jooq.DSLContext;
import ${packageName}.service.*;
import ${packageName}.jooq.common.generated.tables.*;
import javax.annotation.Generated;

@Generated(
	value = {
		"https://github.com/coolcooldee/sloth",
		"Sloth version:1.0"
	},
	comments = "This class is generated by Sloth"
)
@Service
public  class ${upperFirstLetterName}ServiceImpl implements ${upperFirstLetterName}Service{

	@Autowired
	private DSLContext dslContext;

	@Override
	public ${jooqName}Record getBy${upperFirstLetterPrimaryKey}(${primaryKeyType} ${primaryKey}){
		return dslContext.selectFrom(${jooqName}.${upperName}).where(${jooqName}.${upperName}.${upperPrimaryKey}.equals(${primaryKey})).limit(1).fetchOne();
	}

	@Override
	public Integer count(){
	    return 0;
	}

	@Override
	public List<${jooqName}Record> list(){
		return null;
	}
	
}