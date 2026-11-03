.class public Lk0/b;
.super Lt4/d;


# static fields
.field public static final c:Lm/q;

.field public static final d:Lm/q;

.field public static final e:Lm/q;

.field public static final f:Lm/q;

.field public static final g:Lm/q;

.field public static final h:Lm/q;

.field public static final i:Lm/q;

.field public static final j:Lm/q;

.field public static final k:Ljava/util/Hashtable;

.field public static final l:Ljava/util/Hashtable;

.field public static final m:Lk0/b;


# instance fields
.field public final a:Ljava/util/Hashtable;

.field public final b:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 42

    const-string v0, "2.5.4.6"

    invoke-static {v0}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v0

    sput-object v0, Lk0/b;->c:Lm/q;

    const-string v1, "2.5.4.10"

    invoke-static {v1}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v1

    const-string v2, "2.5.4.11"

    invoke-static {v2}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v2

    const-string v3, "2.5.4.12"

    invoke-static {v3}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v3

    const-string v4, "2.5.4.3"

    invoke-static {v4}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v4

    new-instance v5, Lm/q;

    const-string v6, "2.5.4.5"

    invoke-direct {v5, v6}, Lm/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lm/q;->w()Lm/q;

    new-instance v5, Lm/q;

    const-string v7, "2.5.4.9"

    invoke-direct {v5, v7}, Lm/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lm/q;->w()Lm/q;

    move-result-object v5

    invoke-static {v6}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v6

    sput-object v6, Lk0/b;->d:Lm/q;

    const-string v7, "2.5.4.7"

    invoke-static {v7}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v7

    const-string v8, "2.5.4.8"

    invoke-static {v8}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v8

    const-string v9, "2.5.4.4"

    invoke-static {v9}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v9

    const-string v10, "2.5.4.42"

    invoke-static {v10}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v10

    const-string v11, "2.5.4.43"

    invoke-static {v11}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v11

    const-string v12, "2.5.4.44"

    invoke-static {v12}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v12

    const-string v13, "2.5.4.45"

    invoke-static {v13}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v13

    const-string v14, "2.5.4.13"

    invoke-static {v14}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v14

    const-string v15, "2.5.4.15"

    invoke-static {v15}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v15

    const-string v16, "2.5.4.17"

    move-object/from16 v17, v15

    invoke-static/range {v16 .. v16}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v15

    const-string v16, "2.5.4.46"

    move-object/from16 v18, v15

    invoke-static/range {v16 .. v16}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v15

    sput-object v15, Lk0/b;->e:Lm/q;

    const-string v16, "2.5.4.65"

    move-object/from16 v19, v15

    invoke-static/range {v16 .. v16}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v15

    const-string v16, "2.5.4.72"

    move-object/from16 v20, v15

    invoke-static/range {v16 .. v16}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v15

    move-object/from16 v16, v13

    sget-object v13, Ll0/e1;->F0:Lm/q;

    move-object/from16 v21, v15

    const-string v15, "1"

    invoke-virtual {v13, v15}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v15

    invoke-virtual {v15}, Lm/q;->w()Lm/q;

    move-result-object v15

    sput-object v15, Lk0/b;->f:Lm/q;

    move-object/from16 v22, v15

    const-string v15, "2"

    invoke-virtual {v13, v15}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v15

    invoke-virtual {v15}, Lm/q;->w()Lm/q;

    move-result-object v15

    move-object/from16 v23, v15

    const-string v15, "3"

    invoke-virtual {v13, v15}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v15

    invoke-virtual {v15}, Lm/q;->w()Lm/q;

    move-result-object v15

    move-object/from16 v24, v15

    const-string v15, "4"

    invoke-virtual {v13, v15}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v15

    invoke-virtual {v15}, Lm/q;->w()Lm/q;

    move-result-object v15

    move-object/from16 v25, v15

    const-string v15, "5"

    invoke-virtual {v13, v15}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v13

    invoke-virtual {v13}, Lm/q;->w()Lm/q;

    move-result-object v13

    const-string v15, "1.3.36.8.3.14"

    invoke-static {v15}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v15

    const-string v26, "2.5.4.16"

    move-object/from16 v27, v13

    invoke-static/range {v26 .. v26}, Lb/b;->u(Ljava/lang/String;)Lm/q;

    move-result-object v13

    move-object/from16 v26, v15

    new-instance v15, Lm/q;

    move-object/from16 v28, v13

    const-string v13, "2.5.4.54"

    invoke-direct {v15, v13}, Lm/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lm/q;->w()Lm/q;

    sget-object v13, Ll0/e1;->u0:Lm/q;

    sput-object v13, Lk0/b;->g:Lm/q;

    sget-object v15, Ll0/e1;->v0:Lm/q;

    move-object/from16 v29, v15

    sget-object v15, Ll0/e1;->w0:Lm/q;

    move-object/from16 v30, v15

    sget-object v15, Ld0/r;->U:Lm/q;

    sput-object v15, Lk0/b;->h:Lm/q;

    move-object/from16 v31, v13

    sget-object v13, Ld0/r;->V:Lm/q;

    move-object/from16 v32, v13

    sget-object v13, Ld0/r;->X:Lm/q;

    move-object/from16 v33, v13

    new-instance v13, Lm/q;

    move-object/from16 v34, v14

    const-string v14, "0.9.2342.19200300.100.1.25"

    invoke-direct {v13, v14}, Lm/q;-><init>(Ljava/lang/String;)V

    sput-object v13, Lk0/b;->i:Lm/q;

    new-instance v14, Lm/q;

    move-object/from16 v35, v12

    const-string v12, "0.9.2342.19200300.100.1.1"

    invoke-direct {v14, v12}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v12, Lm/q;

    move-object/from16 v36, v11

    const-string v11, "1.3.6.1.4.1.311.60.2.1.3"

    invoke-direct {v12, v11}, Lm/q;-><init>(Ljava/lang/String;)V

    sput-object v12, Lk0/b;->j:Lm/q;

    new-instance v11, Lm/q;

    move-object/from16 v37, v12

    const-string v12, "1.3.6.1.4.1.311.60.2.1.2"

    invoke-direct {v11, v12}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v12, Lm/q;

    move-object/from16 v38, v11

    const-string v11, "1.3.6.1.4.1.311.60.2.1.1"

    invoke-direct {v12, v11}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    sput-object v11, Lk0/b;->k:Ljava/util/Hashtable;

    move-object/from16 v39, v12

    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    sput-object v12, Lk0/b;->l:Ljava/util/Hashtable;

    move-object/from16 v40, v12

    const-string v12, "C"

    invoke-virtual {v11, v0, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "O"

    invoke-virtual {v11, v1, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "T"

    invoke-virtual {v11, v3, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "OU"

    invoke-virtual {v11, v2, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "CN"

    invoke-virtual {v11, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "L"

    invoke-virtual {v11, v7, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "ST"

    invoke-virtual {v11, v8, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "SERIALNUMBER"

    invoke-virtual {v11, v6, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "E"

    invoke-virtual {v11, v15, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "DC"

    invoke-virtual {v11, v13, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "UID"

    invoke-virtual {v11, v14, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "STREET"

    invoke-virtual {v11, v5, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "SURNAME"

    invoke-virtual {v11, v9, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "GIVENNAME"

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "INITIALS"

    move-object/from16 v41, v10

    move-object/from16 v10, v36

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "GENERATION"

    move-object/from16 v10, v35

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "DESCRIPTION"

    move-object/from16 v10, v34

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "ROLE"

    move-object/from16 v10, v21

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "unstructuredAddress"

    move-object/from16 v10, v33

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "unstructuredName"

    move-object/from16 v10, v32

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "UniqueIdentifier"

    move-object/from16 v10, v16

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "DN"

    move-object/from16 v10, v19

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "Pseudonym"

    move-object/from16 v10, v20

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "PostalAddress"

    move-object/from16 v10, v28

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "NameAtBirth"

    move-object/from16 v10, v26

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "CountryOfCitizenship"

    move-object/from16 v10, v25

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "CountryOfResidence"

    move-object/from16 v10, v27

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "Gender"

    move-object/from16 v10, v24

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "PlaceOfBirth"

    move-object/from16 v10, v23

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "DateOfBirth"

    move-object/from16 v10, v22

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "PostalCode"

    move-object/from16 v10, v18

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "BusinessCategory"

    move-object/from16 v10, v17

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "TelephoneNumber"

    move-object/from16 v10, v31

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "Name"

    move-object/from16 v10, v29

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "organizationIdentifier"

    move-object/from16 v10, v30

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "jurisdictionCountry"

    move-object/from16 v10, v37

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "jurisdictionState"

    move-object/from16 v10, v38

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "jurisdictionLocality"

    move-object/from16 v10, v39

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "c"

    move-object/from16 v12, v40

    invoke-virtual {v12, v11, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "o"

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "t"

    invoke-virtual {v12, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ou"

    invoke-virtual {v12, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cn"

    invoke-virtual {v12, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "l"

    invoke-virtual {v12, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "st"

    invoke-virtual {v12, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sn"

    invoke-virtual {v12, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "serialnumber"

    invoke-virtual {v12, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "street"

    invoke-virtual {v12, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "emailaddress"

    invoke-virtual {v12, v0, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dc"

    invoke-virtual {v12, v0, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e"

    invoke-virtual {v12, v0, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uid"

    invoke-virtual {v12, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "surname"

    invoke-virtual {v12, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "givenname"

    move-object/from16 v1, v41

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "initials"

    move-object/from16 v1, v36

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "generation"

    move-object/from16 v1, v35

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "description"

    move-object/from16 v1, v34

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role"

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "unstructuredaddress"

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "unstructuredname"

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uniqueidentifier"

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dn"

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pseudonym"

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postaladdress"

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nameatbirth"

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "countryofcitizenship"

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "countryofresidence"

    move-object/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gender"

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "placeofbirth"

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dateofbirth"

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postalcode"

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "businesscategory"

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "telephonenumber"

    move-object/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "organizationidentifier"

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "jurisdictioncountry"

    move-object/from16 v1, v37

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "jurisdictionstate"

    move-object/from16 v1, v38

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "jurisdictionlocality"

    invoke-virtual {v12, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lk0/b;

    invoke-direct {v0}, Lk0/b;-><init>()V

    sput-object v0, Lk0/b;->m:Lk0/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lk0/b;->k:Ljava/util/Hashtable;

    invoke-static {v0}, Lt4/d;->B(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lk0/b;->b:Ljava/util/Hashtable;

    sget-object v0, Lk0/b;->l:Ljava/util/Hashtable;

    invoke-static {v0}, Lt4/d;->B(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lk0/b;->a:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public final K(Ljava/lang/String;Lm/q;)Lm/f;
    .registers 3

    sget-object p0, Lk0/b;->h:Lm/q;

    invoke-virtual {p2, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-nez p0, :cond_54

    sget-object p0, Lk0/b;->i:Lm/q;

    invoke-virtual {p2, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_54

    :cond_11
    sget-object p0, Lk0/b;->f:Lm/q;

    invoke-virtual {p2, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_1f

    new-instance p0, Lm/j;

    invoke-direct {p0, p1}, Lm/j;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1f
    sget-object p0, Lk0/b;->c:Lm/q;

    invoke-virtual {p2, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-nez p0, :cond_4e

    sget-object p0, Lk0/b;->d:Lm/q;

    invoke-virtual {p2, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-nez p0, :cond_4e

    sget-object p0, Lk0/b;->e:Lm/q;

    invoke-virtual {p2, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-nez p0, :cond_4e

    sget-object p0, Lk0/b;->g:Lm/q;

    invoke-virtual {p2, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-nez p0, :cond_4e

    sget-object p0, Lk0/b;->j:Lm/q;

    invoke-virtual {p2, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_48

    goto :goto_4e

    :cond_48
    new-instance p0, Lm/f1;

    invoke-direct {p0, p1}, Lm/f1;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_4e
    :goto_4e
    new-instance p0, Lm/z0;

    invoke-direct {p0, p1}, Lm/z0;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_54
    :goto_54
    new-instance p0, Lm/u0;

    invoke-direct {p0, p1}, Lm/u0;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lm/q;
    .registers 2

    iget-object p0, p0, Lk0/b;->a:Ljava/util/Hashtable;

    invoke-static {p1, p0}, Lq4/k;->I(Ljava/lang/String;Ljava/util/Hashtable;)Lm/q;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lj0/c;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lj0/c;->j()[Lj0/b;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    array-length v4, p1

    if-ge v3, v4, :cond_22

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_18

    :cond_13
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_18
    aget-object v4, p1, v3

    iget-object v5, p0, Lk0/b;->b:Ljava/util/Hashtable;

    invoke-static {v0, v4, v5}, Lq4/k;->q(Ljava/lang/StringBuilder;Lj0/b;Ljava/util/Hashtable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
