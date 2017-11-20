.class public final Lcom/google/android/location/os/real/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/telephony/TelephonyManager;IJ)Lcom/google/android/location/f/g;
    .locals 8

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 55
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    .line 57
    if-nez v4, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    if-eq v6, v5, :cond_1

    if-ne v6, v2, :cond_3

    :cond_1
    move v1, v5

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v3

    move v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/os/real/ao;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/telephony/CellLocation;IJ)Lcom/google/android/location/f/g;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eq v6, v3, :cond_4

    const/16 v5, 0x8

    if-eq v6, v5, :cond_4

    const/16 v5, 0x9

    if-eq v6, v5, :cond_4

    const/16 v5, 0xa

    if-eq v6, v5, :cond_4

    const/16 v5, 0xf

    if-ne v6, v5, :cond_5

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    if-eq v6, v1, :cond_6

    const/4 v3, 0x5

    if-eq v6, v3, :cond_6

    const/4 v3, 0x6

    if-eq v6, v3, :cond_6

    const/16 v3, 0xc

    if-eq v6, v3, :cond_6

    const/4 v3, 0x7

    if-ne v6, v3, :cond_7

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    const/16 v2, 0xd

    if-eq v6, v2, :cond_2

    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/telephony/CellLocation;IJ)Lcom/google/android/location/f/g;
    .locals 38

    .prologue
    .line 78
    const/4 v10, -0x1

    .line 79
    const/4 v8, -0x1

    .line 82
    const/4 v9, -0x1

    .line 83
    const v5, 0x7fffffff

    .line 84
    const v4, 0x7fffffff

    .line 85
    const/4 v2, -0x1

    .line 86
    const/4 v14, -0x1

    .line 89
    move-object/from16 v0, p4

    instance-of v3, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_4

    .line 90
    check-cast p4, Landroid/telephony/gsm/GsmCellLocation;

    .line 91
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v7

    .line 92
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    .line 93
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/google/android/location/os/real/be;->a(Landroid/telephony/gsm/GsmCellLocation;)I

    move-result v10

    .line 94
    const/4 v3, 0x1

    .line 99
    const/4 v11, 0x4

    move/from16 v0, p1

    if-ne v0, v11, :cond_3

    .line 100
    const/high16 v11, 0x10000

    if-lt v6, v11, :cond_2

    const v11, 0xfffffff

    if-gt v6, v11, :cond_2

    .line 101
    const/16 p1, 0x3

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v35, v10

    move/from16 v6, p1

    .line 125
    :goto_0
    const/4 v3, 0x2

    if-eq v6, v3, :cond_7

    .line 127
    if-eqz p2, :cond_7

    const-string v3, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 131
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 132
    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    move v8, v3

    .line 144
    :cond_0
    :goto_1
    if-eqz p0, :cond_7

    const-string v3, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 149
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 150
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    .line 169
    :goto_2
    sget-object v25, Lcom/google/android/location/f/g;->a:Ljava/util/Collection;

    .line 171
    if-eqz p3, :cond_9

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_9

    .line 172
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    .line 173
    new-instance v36, Ljava/util/HashSet;

    move-object/from16 v0, v36

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 175
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_1
    :goto_3
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NeighboringCellInfo;

    .line 176
    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v3

    .line 177
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 180
    :pswitch_1
    const/4 v3, 0x1

    if-ne v6, v3, :cond_1

    .line 183
    new-instance v3, Lcom/google/android/location/f/d;

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v7

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v10

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v11

    sget-object v12, Lcom/google/android/location/f/g;->a:Ljava/util/Collection;

    const v15, 0x7fffffff

    const v16, 0x7fffffff

    move-wide/from16 v4, p6

    invoke-direct/range {v3 .. v16}, Lcom/google/android/location/f/d;-><init>(JIIIIIILjava/util/Collection;IIII)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 103
    :cond_2
    const/16 p1, 0x1

    :cond_3
    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v35, v10

    move/from16 v6, p1

    .line 106
    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p4

    instance-of v3, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_5

    .line 107
    check-cast p4, Landroid/telephony/cdma/CdmaCellLocation;

    .line 108
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v7

    .line 109
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v6

    .line 110
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v9

    .line 112
    const/4 v8, 0x0

    .line 113
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v5

    .line 114
    invoke-virtual/range {p4 .. p4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    .line 115
    const/4 v3, 0x0

    .line 118
    const/16 p1, 0x2

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v35, v10

    move/from16 v6, p1

    .line 119
    goto/16 :goto_0

    .line 121
    :cond_5
    const/4 v15, 0x0

    .line 223
    :cond_6
    :goto_4
    return-object v15

    .line 139
    :catch_0
    move-exception v3

    .line 140
    sget-boolean v4, Lcom/google/android/location/j/a;->e:Z

    if-eqz v4, :cond_0

    const-string v4, "RealCellState"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Error parsing MCC/MNC from operator \""

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 157
    :catch_1
    move-exception v3

    .line 158
    sget-boolean v4, Lcom/google/android/location/j/a;->e:Z

    if-eqz v4, :cond_7

    const-string v4, "RealCellState"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Error parsing MCC/MNC from home operator \""

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    move v13, v2

    goto/16 :goto_2

    .line 193
    :pswitch_2
    const/4 v3, 0x3

    if-ne v6, v3, :cond_1

    .line 196
    new-instance v15, Lcom/google/android/location/f/l;

    const/16 v19, -0x1

    const/16 v22, -0x1

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v23

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v24

    sget-object v25, Lcom/google/android/location/f/g;->a:Ljava/util/Collection;

    const v28, 0x7fffffff

    const v29, 0x7fffffff

    move-wide/from16 v16, p6

    move/from16 v18, v6

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v26, v13

    move/from16 v27, v14

    invoke-direct/range {v15 .. v29}, Lcom/google/android/location/f/l;-><init>(JIIIIIIILjava/util/Collection;IIII)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 206
    :cond_8
    invoke-static/range {v36 .. v36}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v25

    .line 211
    :cond_9
    if-eqz v30, :cond_a

    .line 212
    new-instance v15, Lcom/google/android/location/f/l;

    move-wide/from16 v16, p6

    move/from16 v18, v6

    move/from16 v19, v33

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v34

    move/from16 v23, v35

    move/from16 v24, p5

    move/from16 v26, v13

    move/from16 v27, v14

    move/from16 v28, v32

    move/from16 v29, v31

    invoke-direct/range {v15 .. v29}, Lcom/google/android/location/f/l;-><init>(JIIIIIIILjava/util/Collection;IIII)V

    .line 219
    :goto_5
    const-string v2, "RealCellState"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 220
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_6

    const-string v2, "RealCellState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RealCellState()  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/google/android/location/f/g;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 215
    :cond_a
    new-instance v3, Lcom/google/android/location/f/d;

    move-wide/from16 v4, p6

    move/from16 v7, v33

    move/from16 v10, v34

    move/from16 v11, p5

    move-object/from16 v12, v25

    move/from16 v15, v32

    move/from16 v16, v31

    invoke-direct/range {v3 .. v16}, Lcom/google/android/location/f/d;-><init>(JIIIIIILjava/util/Collection;IIII)V

    move-object v15, v3

    goto :goto_5

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
