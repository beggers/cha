{- ISO C99 grammar, represented as Haskell datatypes.
-
- Source: http://slps.github.io/zoo/c/iso-9899-tc3.html
-
- Also, you'll notice that many of the types have pretty ugly names. I'm not
- really sure how to get around this--it seems built into the problem of
- turning the C grammar into semantically-named Haskell types. If you have
- a way of avoiding this, please contact me immediately via email or
- carrier pigeon.
-
- beggerss@cs.washington.edu
-
-
-
- Here's the type naming scheme:
-      * Types are given the same names as in the grammars, with some
-        abbreviations (see below).
-      * Value constructors are prefixed with the capital letters of the type
-        they construct, eg an ExtDecl value constructor in the TransUnit type
-        will be called TUExtDecl.
-          (i)  In general, value constructors' names will indicate which fields
-               it expects. However,
-          (ii) If a type only has one value constructor, it will be named
-               the same thing as the type (but with a prefix as described above).
-      * The following substitutions are made in all type names and value
-        constructors:
-          - Translation   -> Trans
-          - External      -> Ext
-          - Declaration   -> Decl      # "Declarator" will always be written in full
-          - Function      -> Func
-          - Definion      -> Def
-          - Specifier     -> Spec
-          - Qualifier     -> Qual
-          - Expression    -> Exp
-          - Logical       -> Log
-          - Argument      -> Arg
-          - Parameter     -> Param
-          - Constant      -> Const
-          - Identifier    -> Ident
-          - Enumerator    -> Enum
-          - Statement     -> Stmt
-              
-}


module Grammar where


import Data.Maybe    


data TransUnit
    = TUExtDecl ExtDecl
    | TUTransUnitExtDecl TransUnit ExtDecl
    deriving (Show, Eq)

data ExtDecl
    = EDFuncDef FuncDef
    | EDDecl Decl
    deriving (Show, Eq)

data FuncDef
    = FDFuncDef DeclSpecs Declarator (Maybe DeclList) CompoundStmt
    deriving (Show, Eq)

data DeclSpecs
    = DSStorageClassSpecDeclSpecs StorageClassSpec (Maybe DeclSpecs)
    | DSTypeSpecifierDeclSpecs TypeSpec (Maybe DeclSpecs)
    | DSTypeQualDeclSpecs TypeQual (Maybe DeclSpecs)
    | DSFuncSpecDeclSpecs FuncSpec (Maybe DeclSpecs)
    deriving (Show, Eq)

data StorageClassSpec
    = Typedef
    | Extern
    | Static
    | Auto
    | Register
    deriving (Show, Eq)

data TypeSpec 
    = Void
    | Char
    | Short
    | Int
    | Long
    | Float
    | Double
    | Signed
    | Unsigned
    | Bool
    | Complex
    | TSStructOrUnionSpec StructOrUnionSpec
    | TSEnumSpec EnumSpec
    | TSTypedefName TypedefName
    deriving (Show, Eq)

data StructOrUnionSpec 
    = SOUSTODO
    deriving (Show, Eq)

data StructOrUnion 
    = Struct
    | Union
    deriving (Show, Eq)

data StructDeclList 
    = SDLTODO
    deriving (Show, Eq)

data StructDecl 
    = SDTODO
    deriving (Show, Eq)

data SpecQualList 
    = SQLTODO
    deriving (Show, Eq)

data TypeQual 
    = Const
    | Restrict
    | Volatile
    deriving (Show, Eq)

data StructDeclaratorList 
    = SDLTODOFUCK
    deriving (Show, Eq)

data StructDeclarator 
    = TODOTODO
    deriving (Show, Eq)

data Declarator 
    = DeclaratorTODO
    deriving (Show, Eq)

data Pointer 
    = PointTODO
    deriving (Show, Eq)

data TypeQualList 
    = TQLTODO
    deriving (Show, Eq)

data DirectDeclarator 
    = DoubleDeeTODO
    deriving (Show, Eq)

data AssignmentExpr 
    = AssTODO
    deriving (Show, Eq)

data ConditionalExpr 
    = ConditionerTODO
    deriving (Show, Eq)

data LogOrExpr 
    = LogarithmTODO
    deriving (Show, Eq)

data LogAndExpr 
    = LogarithmToTODO
    deriving (Show, Eq)

data InclusiveOrExpr 
    = InclusionTODO
    deriving (Show, Eq)

data ExclusiveOrExpr 
    = ExclusionTODO
    deriving (Show, Eq)

data AndExpr 
    = AAAAANDTODO
    deriving (Show, Eq)

data EqualityExpr 
    = BlackLivesMatterTODO
    deriving (Show, Eq)

data RelationalExpr 
    = RelativesTODO
    deriving (Show, Eq)

data ShiftExpr 
    = StickyKeysTODO
    deriving (Show, Eq)

data AdditiveExpr 
    = AddMoarTODO
    deriving (Show, Eq)

data MultiplicativeExpr 
    = TimesMultiplyTODO
    deriving (Show, Eq)

data CastExpr 
    = TypeCastTODO
    deriving (Show, Eq)

data UnaryExpr 
    = UNITARTHEONETRUEGODTODO
    deriving (Show, Eq)

data PostfixExpr 
    = PostalTODO
    deriving (Show, Eq)

data PrimaryExpr 
    = PrimesRCoolTODO
    deriving (Show, Eq)

data Expr 
    = SomeBSTODO
    deriving (Show, Eq)

data ArgExprList 
    = ArgumentTODO
    deriving (Show, Eq)

data TypeName 
    = TNTODO
    deriving (Show, Eq)

data AbstractDeclarator 
    = AbstractTODO
    deriving (Show, Eq)

data DirectAbstractDeclarator 
    = DirectAbstractTODO
    deriving (Show, Eq)

data ParamTypeList 
    = PTLRTODO
    deriving (Show, Eq)

data ParamList 
    = ListyTODO
    deriving (Show, Eq)

data ParamDecl 
    = ParamTODO
    deriving (Show, Eq)

data InitializerList 
    = INITIALIZETHESEQUENCETODO
    deriving (Show, Eq)

data Designation 
    = DeignTODO
    deriving (Show, Eq)

data DesignatorList 
    = DesignatetheTODO
    deriving (Show, Eq)

data Designator 
    = DesignatorrrrrTODO
    deriving (Show, Eq)

data ConstExpr 
    = ConstantineTODO
    deriving (Show, Eq)

data Initializer 
    = InitYooTODO
    deriving (Show, Eq)

data UnaryOp 
    = Ampersand
    | Star
    | Plus
    | Minus
    | Tilde
    | Bang
    deriving (Show, Eq)

data AssignOp 
    = Equals
    | TimesEquals
    | DivideEquals
    | ModEquals
    | PlusEquals
    | MinusEquals
    | LeftShiftEquals
    | RightShiftEquals
    | BitAndEquals
    | BitXorEquals
    | BitOrEquals
    deriving (Show, Eq)

data IdentList 
    = AnotherListTODO
    deriving (Show, Eq)

data EnumSpec 
    = ENUMERRRRRRTODO
    deriving (Show, Eq)

data EnumList 
    = BleghTODO
    deriving (Show, Eq)

data Enum 
    = EnumTODO
    deriving (Show, Eq)

data TypedefName 
    = TPEOUOTODO
    deriving (Show, Eq)

data FuncSpec 
    = Inline
    deriving (Show, Eq)

data DeclList 
    = OTHESUTODO
    deriving (Show, Eq)

data Decl 
    = DeclStuffTODO
    deriving (Show, Eq)

data InitDeclList 
    = BleghaoeuaTODO
    deriving (Show, Eq)

data InitDecl 
    = SomeBSMoreTODO
    deriving (Show, Eq)

data CompoundStmt 
    = BlackBlocksTODO
    deriving (Show, Eq)

data BlockItemList 
    = BLTTODO
    deriving (Show, Eq)

data BlockItem 
    = SomeMoreTODO
    deriving (Show, Eq)

data Stmt 
    = YoulikethatyoufuckerTODO
    deriving (Show, Eq)

data LabeledStmt 
    = LabeledTODO
    deriving (Show, Eq)

data ExprStmt 
    = ExpressiveTODO
    deriving (Show, Eq)

data SelectionStmt 
    = SelectiveTODOYo
    deriving (Show, Eq)

data IterationStmt 
    = DothingsmorethanonceTODO
    deriving (Show, Eq)

data JumpStmt 
    = PeoplestillusetheseTODO
    deriving (Show, Eq)
