from sqlalchemy.ext.automap import automap_base
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

engine = create_engine("mysql+pymysql://root:root@localhost:3306/estagiosdb")

Session = sessionmaker(bind=engine)
session = Session()

Base = automap_base()
Base.prepare(autoload_with=engine)
Alunos = Base.classes.alunos
Entidade = Base.classes.entidades
Estagios = Base.classes.estagios
Turmas = Base.classes.turmas
