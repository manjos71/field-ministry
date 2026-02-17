.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final VARIABLE_LENGTH:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 88

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/16 v1, 0x12

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "00"

    aput-object v6, v4, v5

    const/4 v6, 0x1

    aput-object v2, v4, v6

    const/16 v7, 0xe

    .line 45
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    const-string v10, "01"

    aput-object v10, v9, v5

    aput-object v8, v9, v6

    .line 46
    new-array v10, v3, [Ljava/lang/Object;

    const-string v11, "02"

    aput-object v11, v10, v5

    aput-object v8, v10, v6

    const/16 v11, 0x14

    .line 48
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "10"

    aput-object v15, v14, v5

    aput-object v0, v14, v6

    aput-object v12, v14, v3

    const/4 v15, 0x6

    .line 49
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    const-string v18, "11"

    aput-object v18, v5, v17

    aput-object v16, v5, v6

    const/16 v18, 0x1

    .line 50
    new-array v6, v3, [Ljava/lang/Object;

    const-string v19, "12"

    aput-object v19, v6, v17

    aput-object v16, v6, v18

    const/16 v19, 0xe

    .line 51
    new-array v7, v3, [Ljava/lang/Object;

    const-string v20, "13"

    aput-object v20, v7, v17

    aput-object v16, v7, v18

    const/16 v20, 0x14

    .line 52
    new-array v11, v3, [Ljava/lang/Object;

    const-string v21, "15"

    aput-object v21, v11, v17

    aput-object v16, v11, v18

    const/16 v21, 0x6

    .line 53
    new-array v15, v3, [Ljava/lang/Object;

    const-string v22, "17"

    aput-object v22, v15, v17

    aput-object v16, v15, v18

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x12

    new-array v1, v3, [Ljava/lang/Object;

    const-string v24, "20"

    aput-object v24, v1, v17

    aput-object v22, v1, v18

    const/16 v24, 0x2

    .line 56
    new-array v3, v13, [Ljava/lang/Object;

    const-string v25, "21"

    aput-object v25, v3, v17

    aput-object v0, v3, v18

    aput-object v12, v3, v24

    const/16 v25, 0x1d

    .line 57
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v26, v0

    new-array v0, v13, [Ljava/lang/Object;

    const-string v27, "22"

    aput-object v27, v0, v17

    aput-object v26, v0, v18

    aput-object v25, v0, v24

    const/16 v25, 0x8

    .line 59
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v28, v0

    new-array v0, v13, [Ljava/lang/Object;

    const-string v29, "30"

    aput-object v29, v0, v17

    aput-object v26, v0, v18

    aput-object v27, v0, v24

    move-object/from16 v29, v0

    .line 60
    new-array v0, v13, [Ljava/lang/Object;

    const-string v30, "37"

    aput-object v30, v0, v17

    aput-object v26, v0, v18

    aput-object v27, v0, v24

    const/16 v27, 0x1e

    .line 63
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v30, v0

    new-array v0, v13, [Ljava/lang/Object;

    const-string v31, "90"

    aput-object v31, v0, v17

    aput-object v26, v0, v18

    aput-object v27, v0, v24

    move-object/from16 v31, v0

    .line 64
    new-array v0, v13, [Ljava/lang/Object;

    const-string v32, "91"

    aput-object v32, v0, v17

    aput-object v26, v0, v18

    aput-object v27, v0, v24

    move-object/from16 v32, v0

    .line 65
    new-array v0, v13, [Ljava/lang/Object;

    const-string v33, "92"

    aput-object v33, v0, v17

    aput-object v26, v0, v18

    aput-object v27, v0, v24

    move-object/from16 v33, v0

    .line 66
    new-array v0, v13, [Ljava/lang/Object;

    const-string v34, "93"

    aput-object v34, v0, v17

    aput-object v26, v0, v18

    aput-object v27, v0, v24

    move-object/from16 v34, v0

    .line 67
    new-array v0, v13, [Ljava/lang/Object;

    const-string v35, "94"

    aput-object v35, v0, v17

    aput-object v26, v0, v18

    aput-object v27, v0, v24

    move-object/from16 v35, v0

    .line 68
    new-array v0, v13, [Ljava/lang/Object;

    const-string v36, "95"

    aput-object v36, v0, v17

    aput-object v26, v0, v18

    aput-object v27, v0, v24

    move-object/from16 v36, v0

    .line 69
    new-array v0, v13, [Ljava/lang/Object;

    const-string v37, "96"

    aput-object v37, v0, v17

    aput-object v26, v0, v18

    aput-object v27, v0, v24

    move-object/from16 v37, v0

    .line 70
    new-array v0, v13, [Ljava/lang/Object;

    const-string v38, "97"

    aput-object v38, v0, v17

    aput-object v26, v0, v18

    aput-object v27, v0, v24

    move-object/from16 v38, v0

    .line 71
    new-array v0, v13, [Ljava/lang/Object;

    const-string v39, "98"

    aput-object v39, v0, v17

    aput-object v26, v0, v18

    aput-object v27, v0, v24

    move-object/from16 v39, v0

    .line 72
    new-array v0, v13, [Ljava/lang/Object;

    const-string v40, "99"

    aput-object v40, v0, v17

    aput-object v26, v0, v18

    aput-object v27, v0, v24

    const/16 v40, 0x3

    const/16 v13, 0x18

    new-array v13, v13, [[Ljava/lang/Object;

    aput-object v4, v13, v17

    aput-object v9, v13, v18

    aput-object v10, v13, v24

    aput-object v14, v13, v40

    const/4 v4, 0x4

    aput-object v5, v13, v4

    const/4 v5, 0x5

    aput-object v6, v13, v5

    aput-object v7, v13, v21

    const/4 v6, 0x7

    aput-object v11, v13, v6

    aput-object v15, v13, v25

    const/16 v7, 0x9

    aput-object v1, v13, v7

    const/16 v1, 0xa

    aput-object v3, v13, v1

    const/16 v3, 0xb

    aput-object v28, v13, v3

    const/16 v9, 0xc

    aput-object v29, v13, v9

    const/16 v10, 0xd

    aput-object v30, v13, v10

    aput-object v31, v13, v19

    const/16 v11, 0xf

    aput-object v32, v13, v11

    const/16 v14, 0x10

    aput-object v33, v13, v14

    const/16 v15, 0x11

    aput-object v34, v13, v15

    aput-object v35, v13, v23

    const/16 v28, 0x13

    aput-object v36, v13, v28

    aput-object v37, v13, v20

    const/16 v29, 0x15

    aput-object v38, v13, v29

    const/16 v30, 0x16

    aput-object v39, v13, v30

    const/16 v30, 0x17

    aput-object v0, v13, v30

    sput-object v13, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    const/4 v0, 0x3

    .line 78
    new-array v13, v0, [Ljava/lang/Object;

    const-string v30, "240"

    aput-object v30, v13, v17

    aput-object v26, v13, v18

    aput-object v27, v13, v24

    const/16 v30, 0xa

    .line 79
    new-array v1, v0, [Ljava/lang/Object;

    const-string v31, "241"

    aput-object v31, v1, v17

    aput-object v26, v1, v18

    aput-object v27, v1, v24

    const/16 v31, 0xb

    .line 80
    new-array v3, v0, [Ljava/lang/Object;

    const-string v32, "242"

    aput-object v32, v3, v17

    aput-object v26, v3, v18

    aput-object v16, v3, v24

    const/16 v32, 0x4

    .line 81
    new-array v4, v0, [Ljava/lang/Object;

    const-string v33, "250"

    aput-object v33, v4, v17

    aput-object v26, v4, v18

    aput-object v27, v4, v24

    const/16 v33, 0x5

    .line 82
    new-array v5, v0, [Ljava/lang/Object;

    const-string v34, "251"

    aput-object v34, v5, v17

    aput-object v26, v5, v18

    aput-object v27, v5, v24

    .line 83
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const/16 v35, 0x7

    new-array v6, v0, [Ljava/lang/Object;

    const-string v36, "253"

    aput-object v36, v6, v17

    aput-object v26, v6, v18

    aput-object v34, v6, v24

    const/16 v36, 0x9

    .line 84
    new-array v7, v0, [Ljava/lang/Object;

    const-string v37, "254"

    aput-object v37, v7, v17

    aput-object v26, v7, v18

    aput-object v12, v7, v24

    const/16 v37, 0xc

    .line 86
    new-array v9, v0, [Ljava/lang/Object;

    const-string v38, "400"

    aput-object v38, v9, v17

    aput-object v26, v9, v18

    aput-object v27, v9, v24

    const/16 v38, 0xd

    .line 87
    new-array v10, v0, [Ljava/lang/Object;

    const-string v39, "401"

    aput-object v39, v10, v17

    aput-object v26, v10, v18

    aput-object v27, v10, v24

    const/4 v11, 0x2

    const/16 v39, 0xf

    const/16 v41, 0x10

    .line 88
    new-array v14, v11, [Ljava/lang/Object;

    const-string v24, "402"

    aput-object v24, v14, v17

    aput-object v34, v14, v18

    const/16 v34, 0x11

    .line 89
    new-array v15, v0, [Ljava/lang/Object;

    const-string v0, "403"

    aput-object v0, v15, v17

    aput-object v26, v15, v18

    aput-object v27, v15, v11

    .line 90
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v42, v0

    new-array v0, v11, [Ljava/lang/Object;

    const-string v24, "410"

    aput-object v24, v0, v17

    aput-object v42, v0, v18

    move-object/from16 v43, v0

    .line 91
    new-array v0, v11, [Ljava/lang/Object;

    const-string v24, "411"

    aput-object v24, v0, v17

    aput-object v42, v0, v18

    move-object/from16 v44, v0

    .line 92
    new-array v0, v11, [Ljava/lang/Object;

    const-string v24, "412"

    aput-object v24, v0, v17

    aput-object v42, v0, v18

    move-object/from16 v45, v0

    .line 93
    new-array v0, v11, [Ljava/lang/Object;

    const-string v24, "413"

    aput-object v24, v0, v17

    aput-object v42, v0, v18

    move-object/from16 v46, v0

    .line 94
    new-array v0, v11, [Ljava/lang/Object;

    const-string v24, "414"

    aput-object v24, v0, v17

    aput-object v42, v0, v18

    move-object/from16 v47, v0

    const/4 v11, 0x3

    const/16 v24, 0x2

    .line 95
    new-array v0, v11, [Ljava/lang/Object;

    const-string v40, "420"

    aput-object v40, v0, v17

    aput-object v26, v0, v18

    aput-object v12, v0, v24

    .line 96
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v49, v0

    new-array v0, v11, [Ljava/lang/Object;

    const-string v40, "421"

    aput-object v40, v0, v17

    aput-object v26, v0, v18

    aput-object v48, v0, v24

    .line 97
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v51, v0

    const/4 v11, 0x2

    new-array v0, v11, [Ljava/lang/Object;

    const-string v24, "422"

    aput-object v24, v0, v17

    aput-object v50, v0, v18

    move-object/from16 v52, v0

    const/4 v11, 0x3

    const/16 v24, 0x2

    .line 98
    new-array v0, v11, [Ljava/lang/Object;

    const-string v11, "423"

    aput-object v11, v0, v17

    aput-object v26, v0, v18

    aput-object v48, v0, v24

    move-object/from16 v53, v0

    const/4 v11, 0x2

    .line 99
    new-array v0, v11, [Ljava/lang/Object;

    const-string v24, "424"

    aput-object v24, v0, v17

    aput-object v50, v0, v18

    move-object/from16 v54, v0

    .line 100
    new-array v0, v11, [Ljava/lang/Object;

    const-string v24, "425"

    aput-object v24, v0, v17

    aput-object v50, v0, v18

    move-object/from16 v55, v0

    .line 101
    new-array v0, v11, [Ljava/lang/Object;

    const-string v24, "426"

    aput-object v24, v0, v17

    aput-object v50, v0, v18

    const/16 v24, 0x2

    const/16 v11, 0x17

    new-array v11, v11, [[Ljava/lang/Object;

    aput-object v13, v11, v17

    aput-object v1, v11, v18

    aput-object v3, v11, v24

    const/16 v40, 0x3

    aput-object v4, v11, v40

    aput-object v5, v11, v32

    aput-object v6, v11, v33

    aput-object v7, v11, v21

    aput-object v9, v11, v35

    aput-object v10, v11, v25

    aput-object v14, v11, v36

    aput-object v15, v11, v30

    aput-object v43, v11, v31

    aput-object v44, v11, v37

    aput-object v45, v11, v38

    aput-object v46, v11, v19

    aput-object v47, v11, v39

    aput-object v49, v11, v41

    aput-object v51, v11, v34

    aput-object v52, v11, v23

    aput-object v53, v11, v28

    aput-object v54, v11, v20

    aput-object v55, v11, v29

    const/16 v1, 0x16

    aput-object v0, v11, v1

    sput-object v11, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    const/4 v11, 0x2

    .line 107
    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "310"

    aput-object v1, v0, v17

    aput-object v16, v0, v18

    .line 108
    new-array v1, v11, [Ljava/lang/Object;

    const-string v3, "311"

    aput-object v3, v1, v17

    aput-object v16, v1, v18

    .line 109
    new-array v3, v11, [Ljava/lang/Object;

    const-string v4, "312"

    aput-object v4, v3, v17

    aput-object v16, v3, v18

    .line 110
    new-array v4, v11, [Ljava/lang/Object;

    const-string v5, "313"

    aput-object v5, v4, v17

    aput-object v16, v4, v18

    .line 111
    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "314"

    aput-object v6, v5, v17

    aput-object v16, v5, v18

    .line 112
    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "315"

    aput-object v7, v6, v17

    aput-object v16, v6, v18

    .line 113
    new-array v7, v11, [Ljava/lang/Object;

    const-string v9, "316"

    aput-object v9, v7, v17

    aput-object v16, v7, v18

    .line 114
    new-array v9, v11, [Ljava/lang/Object;

    const-string v10, "320"

    aput-object v10, v9, v17

    aput-object v16, v9, v18

    .line 115
    new-array v10, v11, [Ljava/lang/Object;

    const-string v13, "321"

    aput-object v13, v10, v17

    aput-object v16, v10, v18

    .line 116
    new-array v13, v11, [Ljava/lang/Object;

    const-string v14, "322"

    aput-object v14, v13, v17

    aput-object v16, v13, v18

    .line 117
    new-array v14, v11, [Ljava/lang/Object;

    const-string v15, "323"

    aput-object v15, v14, v17

    aput-object v16, v14, v18

    .line 118
    new-array v15, v11, [Ljava/lang/Object;

    const-string v24, "324"

    aput-object v24, v15, v17

    aput-object v16, v15, v18

    move-object/from16 v24, v0

    .line 119
    new-array v0, v11, [Ljava/lang/Object;

    const-string v43, "325"

    aput-object v43, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v43, v0

    .line 120
    new-array v0, v11, [Ljava/lang/Object;

    const-string v44, "326"

    aput-object v44, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v44, v0

    .line 121
    new-array v0, v11, [Ljava/lang/Object;

    const-string v45, "327"

    aput-object v45, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v45, v0

    .line 122
    new-array v0, v11, [Ljava/lang/Object;

    const-string v46, "328"

    aput-object v46, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v46, v0

    .line 123
    new-array v0, v11, [Ljava/lang/Object;

    const-string v47, "329"

    aput-object v47, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v47, v0

    .line 124
    new-array v0, v11, [Ljava/lang/Object;

    const-string v49, "330"

    aput-object v49, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v49, v0

    .line 125
    new-array v0, v11, [Ljava/lang/Object;

    const-string v50, "331"

    aput-object v50, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v50, v0

    .line 126
    new-array v0, v11, [Ljava/lang/Object;

    const-string v51, "332"

    aput-object v51, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v51, v0

    .line 127
    new-array v0, v11, [Ljava/lang/Object;

    const-string v52, "333"

    aput-object v52, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v52, v0

    .line 128
    new-array v0, v11, [Ljava/lang/Object;

    const-string v53, "334"

    aput-object v53, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v53, v0

    .line 129
    new-array v0, v11, [Ljava/lang/Object;

    const-string v54, "335"

    aput-object v54, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v54, v0

    .line 130
    new-array v0, v11, [Ljava/lang/Object;

    const-string v55, "336"

    aput-object v55, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v55, v0

    .line 131
    new-array v0, v11, [Ljava/lang/Object;

    const-string v56, "340"

    aput-object v56, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v56, v0

    .line 132
    new-array v0, v11, [Ljava/lang/Object;

    const-string v57, "341"

    aput-object v57, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v57, v0

    .line 133
    new-array v0, v11, [Ljava/lang/Object;

    const-string v58, "342"

    aput-object v58, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v58, v0

    .line 134
    new-array v0, v11, [Ljava/lang/Object;

    const-string v59, "343"

    aput-object v59, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v59, v0

    .line 135
    new-array v0, v11, [Ljava/lang/Object;

    const-string v60, "344"

    aput-object v60, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v60, v0

    .line 136
    new-array v0, v11, [Ljava/lang/Object;

    const-string v61, "345"

    aput-object v61, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v61, v0

    .line 137
    new-array v0, v11, [Ljava/lang/Object;

    const-string v62, "346"

    aput-object v62, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v62, v0

    .line 138
    new-array v0, v11, [Ljava/lang/Object;

    const-string v63, "347"

    aput-object v63, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v63, v0

    .line 139
    new-array v0, v11, [Ljava/lang/Object;

    const-string v64, "348"

    aput-object v64, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v64, v0

    .line 140
    new-array v0, v11, [Ljava/lang/Object;

    const-string v65, "349"

    aput-object v65, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v65, v0

    .line 141
    new-array v0, v11, [Ljava/lang/Object;

    const-string v66, "350"

    aput-object v66, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v66, v0

    .line 142
    new-array v0, v11, [Ljava/lang/Object;

    const-string v67, "351"

    aput-object v67, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v67, v0

    .line 143
    new-array v0, v11, [Ljava/lang/Object;

    const-string v68, "352"

    aput-object v68, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v68, v0

    .line 144
    new-array v0, v11, [Ljava/lang/Object;

    const-string v69, "353"

    aput-object v69, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v69, v0

    .line 145
    new-array v0, v11, [Ljava/lang/Object;

    const-string v70, "354"

    aput-object v70, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v70, v0

    .line 146
    new-array v0, v11, [Ljava/lang/Object;

    const-string v71, "355"

    aput-object v71, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v71, v0

    .line 147
    new-array v0, v11, [Ljava/lang/Object;

    const-string v72, "356"

    aput-object v72, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v72, v0

    .line 148
    new-array v0, v11, [Ljava/lang/Object;

    const-string v73, "357"

    aput-object v73, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v73, v0

    .line 149
    new-array v0, v11, [Ljava/lang/Object;

    const-string v74, "360"

    aput-object v74, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v74, v0

    .line 150
    new-array v0, v11, [Ljava/lang/Object;

    const-string v75, "361"

    aput-object v75, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v75, v0

    .line 151
    new-array v0, v11, [Ljava/lang/Object;

    const-string v76, "362"

    aput-object v76, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v76, v0

    .line 152
    new-array v0, v11, [Ljava/lang/Object;

    const-string v77, "363"

    aput-object v77, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v77, v0

    .line 153
    new-array v0, v11, [Ljava/lang/Object;

    const-string v78, "364"

    aput-object v78, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v78, v0

    .line 154
    new-array v0, v11, [Ljava/lang/Object;

    const-string v79, "365"

    aput-object v79, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v79, v0

    .line 155
    new-array v0, v11, [Ljava/lang/Object;

    const-string v80, "366"

    aput-object v80, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v80, v0

    .line 156
    new-array v0, v11, [Ljava/lang/Object;

    const-string v81, "367"

    aput-object v81, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v81, v0

    .line 157
    new-array v0, v11, [Ljava/lang/Object;

    const-string v82, "368"

    aput-object v82, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v82, v0

    .line 158
    new-array v0, v11, [Ljava/lang/Object;

    const-string v83, "369"

    aput-object v83, v0, v17

    aput-object v16, v0, v18

    move-object/from16 v84, v0

    const/4 v11, 0x3

    const/16 v83, 0x2

    .line 159
    new-array v0, v11, [Ljava/lang/Object;

    const-string v40, "390"

    aput-object v40, v0, v17

    aput-object v26, v0, v18

    aput-object v48, v0, v83

    move-object/from16 v85, v0

    .line 160
    new-array v0, v11, [Ljava/lang/Object;

    const-string v40, "391"

    aput-object v40, v0, v17

    aput-object v26, v0, v18

    aput-object v2, v0, v83

    move-object/from16 v86, v0

    .line 161
    new-array v0, v11, [Ljava/lang/Object;

    const-string v40, "392"

    aput-object v40, v0, v17

    aput-object v26, v0, v18

    aput-object v48, v0, v83

    move-object/from16 v48, v0

    .line 162
    new-array v0, v11, [Ljava/lang/Object;

    const-string v40, "393"

    aput-object v40, v0, v17

    aput-object v26, v0, v18

    aput-object v2, v0, v83

    move-object/from16 v87, v0

    .line 163
    new-array v0, v11, [Ljava/lang/Object;

    const-string v40, "703"

    aput-object v40, v0, v17

    aput-object v26, v0, v18

    aput-object v27, v0, v83

    const/16 v40, 0x3

    const/16 v11, 0x39

    new-array v11, v11, [[Ljava/lang/Object;

    aput-object v24, v11, v17

    aput-object v1, v11, v18

    aput-object v3, v11, v83

    aput-object v4, v11, v40

    aput-object v5, v11, v32

    aput-object v6, v11, v33

    aput-object v7, v11, v21

    aput-object v9, v11, v35

    aput-object v10, v11, v25

    aput-object v13, v11, v36

    aput-object v14, v11, v30

    aput-object v15, v11, v31

    aput-object v43, v11, v37

    aput-object v44, v11, v38

    aput-object v45, v11, v19

    aput-object v46, v11, v39

    aput-object v47, v11, v41

    aput-object v49, v11, v34

    aput-object v50, v11, v23

    aput-object v51, v11, v28

    aput-object v52, v11, v20

    aput-object v53, v11, v29

    const/16 v1, 0x16

    aput-object v54, v11, v1

    const/16 v1, 0x17

    aput-object v55, v11, v1

    const/16 v1, 0x18

    aput-object v56, v11, v1

    const/16 v1, 0x19

    aput-object v57, v11, v1

    const/16 v1, 0x1a

    aput-object v58, v11, v1

    const/16 v1, 0x1b

    aput-object v59, v11, v1

    const/16 v1, 0x1c

    aput-object v60, v11, v1

    const/16 v1, 0x1d

    aput-object v61, v11, v1

    const/16 v1, 0x1e

    aput-object v62, v11, v1

    const/16 v1, 0x1f

    aput-object v63, v11, v1

    const/16 v1, 0x20

    aput-object v64, v11, v1

    const/16 v1, 0x21

    aput-object v65, v11, v1

    const/16 v1, 0x22

    aput-object v66, v11, v1

    const/16 v1, 0x23

    aput-object v67, v11, v1

    const/16 v1, 0x24

    aput-object v68, v11, v1

    const/16 v1, 0x25

    aput-object v69, v11, v1

    const/16 v1, 0x26

    aput-object v70, v11, v1

    const/16 v1, 0x27

    aput-object v71, v11, v1

    const/16 v1, 0x28

    aput-object v72, v11, v1

    const/16 v1, 0x29

    aput-object v73, v11, v1

    const/16 v1, 0x2a

    aput-object v74, v11, v1

    const/16 v1, 0x2b

    aput-object v75, v11, v1

    const/16 v1, 0x2c

    aput-object v76, v11, v1

    const/16 v1, 0x2d

    aput-object v77, v11, v1

    const/16 v1, 0x2e

    aput-object v78, v11, v1

    const/16 v1, 0x2f

    aput-object v79, v11, v1

    const/16 v1, 0x30

    aput-object v80, v11, v1

    const/16 v1, 0x31

    aput-object v81, v11, v1

    const/16 v1, 0x32

    aput-object v82, v11, v1

    const/16 v1, 0x33

    aput-object v84, v11, v1

    const/16 v1, 0x34

    aput-object v85, v11, v1

    const/16 v1, 0x35

    aput-object v86, v11, v1

    const/16 v1, 0x36

    aput-object v48, v11, v1

    const/16 v1, 0x37

    aput-object v87, v11, v1

    const/16 v1, 0x38

    aput-object v0, v11, v1

    sput-object v11, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    const/4 v11, 0x2

    .line 169
    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "7001"

    aput-object v1, v0, v17

    aput-object v42, v0, v18

    const/4 v1, 0x3

    .line 170
    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "7002"

    aput-object v1, v3, v17

    aput-object v26, v3, v18

    aput-object v27, v3, v11

    .line 171
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v4, v11, [Ljava/lang/Object;

    const-string v5, "7003"

    aput-object v5, v4, v17

    aput-object v1, v4, v18

    .line 173
    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "8001"

    aput-object v6, v5, v17

    aput-object v8, v5, v18

    const/4 v6, 0x3

    .line 174
    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "8002"

    aput-object v8, v7, v17

    aput-object v26, v7, v18

    aput-object v12, v7, v11

    .line 175
    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "8003"

    aput-object v9, v8, v17

    aput-object v26, v8, v18

    aput-object v27, v8, v11

    .line 176
    new-array v9, v6, [Ljava/lang/Object;

    const-string v6, "8004"

    aput-object v6, v9, v17

    aput-object v26, v9, v18

    aput-object v27, v9, v11

    .line 177
    new-array v6, v11, [Ljava/lang/Object;

    const-string v10, "8005"

    aput-object v10, v6, v17

    aput-object v16, v6, v18

    .line 178
    new-array v10, v11, [Ljava/lang/Object;

    const-string v12, "8006"

    aput-object v12, v10, v17

    aput-object v2, v10, v18

    const/4 v12, 0x3

    .line 179
    new-array v13, v12, [Ljava/lang/Object;

    const-string v14, "8007"

    aput-object v14, v13, v17

    aput-object v26, v13, v18

    aput-object v27, v13, v11

    .line 180
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v15, v12, [Ljava/lang/Object;

    const-string v20, "8008"

    aput-object v20, v15, v17

    aput-object v26, v15, v18

    aput-object v14, v15, v11

    .line 181
    new-array v14, v11, [Ljava/lang/Object;

    const-string v20, "8018"

    aput-object v20, v14, v17

    aput-object v2, v14, v18

    const/16 v2, 0x19

    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v24, 0x2

    new-array v11, v12, [Ljava/lang/Object;

    const-string v12, "8020"

    aput-object v12, v11, v17

    aput-object v26, v11, v18

    aput-object v2, v11, v24

    const/4 v2, 0x2

    .line 183
    new-array v12, v2, [Ljava/lang/Object;

    const-string v20, "8100"

    aput-object v20, v12, v17

    aput-object v16, v12, v18

    move-object/from16 v16, v0

    .line 184
    new-array v0, v2, [Ljava/lang/Object;

    const-string v20, "8101"

    aput-object v20, v0, v17

    aput-object v1, v0, v18

    .line 185
    new-array v1, v2, [Ljava/lang/Object;

    const-string v20, "8102"

    aput-object v20, v1, v17

    aput-object v22, v1, v18

    const/16 v20, 0x46

    .line 186
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/4 v2, 0x3

    const/16 v24, 0x2

    move-object/from16 v22, v0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v27, "8110"

    aput-object v27, v0, v17

    aput-object v26, v0, v18

    aput-object v20, v0, v24

    move-object/from16 v27, v0

    .line 187
    new-array v0, v2, [Ljava/lang/Object;

    const-string v28, "8200"

    aput-object v28, v0, v17

    aput-object v26, v0, v18

    aput-object v20, v0, v24

    const/16 v2, 0x12

    const/16 v40, 0x3

    new-array v2, v2, [[Ljava/lang/Object;

    aput-object v16, v2, v17

    aput-object v3, v2, v18

    aput-object v4, v2, v24

    aput-object v5, v2, v40

    aput-object v7, v2, v32

    aput-object v8, v2, v33

    aput-object v9, v2, v21

    aput-object v6, v2, v35

    aput-object v10, v2, v25

    aput-object v13, v2, v36

    aput-object v15, v2, v30

    aput-object v14, v2, v31

    aput-object v11, v2, v37

    aput-object v12, v2, v38

    aput-object v22, v2, v19

    aput-object v1, v2, v39

    aput-object v27, v2, v41

    aput-object v0, v2, v34

    sput-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    return-void
.end method

.method static parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_f

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 206
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_3

    aget-object v7, v3, v5

    .line 207
    aget-object v8, v7, v0

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 208
    aget-object v0, v7, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    .line 209
    aget-object v0, v7, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_e

    .line 219
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 221
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_6

    aget-object v8, v4, v7

    .line 222
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 223
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_4

    .line 224
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 226
    :cond_4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 231
    :cond_6
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    const/4 v7, 0x4

    if-ge v5, v4, :cond_9

    aget-object v8, v3, v5

    .line 232
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 233
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_7

    .line 234
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 236
    :cond_7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 240
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_d

    .line 244
    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 246
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_c

    aget-object v8, v3, v5

    .line 247
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 248
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_a

    .line 249
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 251
    :cond_a
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 255
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 241
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 216
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 201
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static processFixedAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 259
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p0, :cond_2

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, p0

    if-lt v1, p1, :cond_1

    .line 269
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p0

    .line 273
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 266
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 260
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static processVariableAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, p0

    if-ge v1, p1, :cond_0

    .line 281
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    .line 285
    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 287
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    .line 289
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
