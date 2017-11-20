.class public Lcom/google/android/location/os/real/SdkSpecific18;
.super Lcom/google/android/location/os/real/SdkSpecific17;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/location/os/real/SdkSpecific17;-><init>()V

    return-void
.end method

.method private static a(JLandroid/telephony/CellInfoGsm;Ljava/util/Collection;)Lcom/google/android/location/f/g;
    .locals 22

    .prologue
    .line 43
    if-nez p2, :cond_0

    .line 44
    const/4 v3, 0x0

    .line 81
    :goto_0
    return-object v3

    .line 47
    :cond_0
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    .line 49
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v19

    .line 51
    if-eqz v2, :cond_4

    .line 52
    new-instance v18, Ljava/util/HashSet;

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 54
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfoGsm;

    .line 55
    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v7

    .line 58
    const v3, 0x7fffffff

    if-eq v7, v3, :cond_1

    const/4 v3, -0x1

    if-eq v7, v3, :cond_1

    .line 64
    new-instance v3, Lcom/google/android/location/f/l;

    const/4 v6, 0x1

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v8

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v9

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v10

    const v11, 0x7fffffff

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v12

    sget-object v13, Lcom/google/android/location/f/g;->a:Ljava/util/Collection;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const v16, 0x7fffffff

    const v17, 0x7fffffff

    move-wide/from16 v4, p0

    invoke-direct/range {v3 .. v17}, Lcom/google/android/location/f/l;-><init>(JIIIIIIILjava/util/Collection;IIII)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 47
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v13, v18

    .line 75
    :goto_3
    new-instance v3, Lcom/google/android/location/f/l;

    const/4 v6, 0x1

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v8

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v9

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v10

    const v11, 0x7fffffff

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v12

    const/4 v14, -0x1

    const/4 v15, -0x1

    const v16, 0x7fffffff

    const v17, 0x7fffffff

    move-wide/from16 v4, p0

    invoke-direct/range {v3 .. v17}, Lcom/google/android/location/f/l;-><init>(JIIIIIIILjava/util/Collection;IIII)V

    goto/16 :goto_0

    .line 72
    :cond_4
    sget-object v13, Lcom/google/android/location/f/g;->a:Ljava/util/Collection;

    goto :goto_3
.end method

.method private static a(JLandroid/telephony/CellInfoWcdma;Ljava/util/List;)Lcom/google/android/location/f/g;
    .locals 22

    .prologue
    .line 91
    if-nez p2, :cond_0

    .line 92
    const/4 v3, 0x0

    .line 129
    :goto_0
    return-object v3

    .line 95
    :cond_0
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    .line 97
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v19

    .line 99
    if-eqz v2, :cond_4

    .line 100
    new-instance v18, Ljava/util/HashSet;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 102
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfoWcdma;

    .line 103
    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v11

    .line 106
    const v3, 0x7fffffff

    if-eq v11, v3, :cond_1

    const/4 v3, -0x1

    if-eq v11, v3, :cond_1

    .line 112
    new-instance v3, Lcom/google/android/location/f/l;

    const/4 v6, 0x3

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v8

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v9

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v10

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v12

    sget-object v13, Lcom/google/android/location/f/g;->a:Ljava/util/Collection;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const v16, 0x7fffffff

    const v17, 0x7fffffff

    move-wide/from16 v4, p0

    invoke-direct/range {v3 .. v17}, Lcom/google/android/location/f/l;-><init>(JIIIIIIILjava/util/Collection;IIII)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v13, v18

    .line 123
    :goto_3
    new-instance v3, Lcom/google/android/location/f/l;

    const/4 v6, 0x3

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v8

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v9

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v10

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v12

    const/4 v14, -0x1

    const/4 v15, -0x1

    const v16, 0x7fffffff

    const v17, 0x7fffffff

    move-wide/from16 v4, p0

    invoke-direct/range {v3 .. v17}, Lcom/google/android/location/f/l;-><init>(JIIIIIIILjava/util/Collection;IIII)V

    goto/16 :goto_0

    .line 120
    :cond_4
    sget-object v13, Lcom/google/android/location/f/g;->a:Ljava/util/Collection;

    goto :goto_3
.end method


# virtual methods
.method public final a(Landroid/hardware/SensorManager;Lcom/google/android/location/os/at;)Lcom/google/android/location/activity/az;
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lcom/google/android/location/activity/ab;

    invoke-direct {v0, p1, p2}, Lcom/google/android/location/activity/ab;-><init>(Landroid/hardware/SensorManager;Lcom/google/android/location/os/at;)V

    return-object v0
.end method

.method public final a(Landroid/telephony/TelephonyManager;IJ)[Lcom/google/android/location/f/g;
    .locals 15

    .prologue
    .line 143
    invoke-static/range {p1 .. p4}, Lcom/google/android/location/os/real/ao;->a(Landroid/telephony/TelephonyManager;IJ)Lcom/google/android/location/f/g;

    move-result-object v9

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v10

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 150
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_0

    const-string v3, "SdkSpecific18"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cellLocation "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_1

    const-string v3, "SdkSpecific18"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NetworkOperator: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_1
    if-eqz v2, :cond_3

    .line 154
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_2

    const-string v3, "SdkSpecific18"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cellLocation is class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_2
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_3

    const-string v2, "SdkSpecific18"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNetworkType returns "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_3
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_4

    const-string v2, "SdkSpecific18"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cellInfo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_4
    if-nez v10, :cond_6

    .line 161
    if-eqz v9, :cond_5

    .line 162
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/location/f/g;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    .line 305
    :goto_0
    return-object v2

    .line 164
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 168
    :cond_6
    const/4 v7, 0x0

    .line 169
    sget-object v6, Lcom/google/android/location/f/g;->a:Ljava/util/Collection;

    .line 171
    const/4 v5, 0x0

    .line 172
    const/4 v4, 0x0

    .line 174
    const/4 v2, 0x0

    .line 175
    const/4 v3, 0x0

    .line 180
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    :cond_7
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 182
    instance-of v12, v2, Landroid/telephony/CellInfoLte;

    if-eqz v12, :cond_c

    .line 183
    check-cast v2, Landroid/telephony/CellInfoLte;

    .line 184
    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v12

    .line 187
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v13

    const v14, 0x7fffffff

    if-eq v13, v14, :cond_b

    .line 189
    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->isRegistered()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 192
    invoke-virtual {v12}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v13

    const v14, 0x7fffffff

    if-eq v13, v14, :cond_8

    invoke-virtual {v12}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v13

    const v14, 0x7fffffff

    if-eq v13, v14, :cond_8

    invoke-virtual {v12}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v13

    const v14, 0x7fffffff

    if-eq v13, v14, :cond_8

    invoke-virtual {v12}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v13

    const v14, 0x7fffffff

    if-eq v13, v14, :cond_8

    invoke-virtual {v12}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v12

    const v13, 0x7fffffff

    if-eq v12, v13, :cond_8

    move-object v8, v2

    .line 196
    goto :goto_1

    .line 198
    :cond_8
    sget-boolean v12, Lcom/google/android/location/j/a;->b:Z

    if-eqz v12, :cond_7

    const-string v12, "SdkSpecific18"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Rejecting LTE primary cell "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_9
    sget-object v12, Lcom/google/android/location/f/g;->a:Ljava/util/Collection;

    if-ne v7, v12, :cond_a

    .line 204
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    :cond_a
    sget-object v12, Lcom/google/android/location/f/g;->a:Ljava/util/Collection;

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v2, v12}, Lcom/google/android/location/os/real/SdkSpecific18;->a(JLandroid/telephony/CellInfoLte;Ljava/util/Collection;)Lcom/google/android/location/f/ab;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 210
    :cond_b
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_7

    const-string v2, "SdkSpecific18"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Rejecting CellIdentity of "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 212
    :cond_c
    instance-of v12, v2, Landroid/telephony/CellInfoWcdma;

    if-eqz v12, :cond_f

    .line 214
    check-cast v2, Landroid/telephony/CellInfoWcdma;

    .line 215
    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    .line 218
    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->isRegistered()Z

    move-result v12

    if-eqz v12, :cond_d

    move-object v6, v2

    .line 219
    goto/16 :goto_1

    .line 221
    :cond_d
    if-nez v5, :cond_e

    .line 222
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    :cond_e
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 227
    :cond_f
    instance-of v12, v2, Landroid/telephony/CellInfoGsm;

    if-eqz v12, :cond_12

    .line 229
    check-cast v2, Landroid/telephony/CellInfoGsm;

    .line 230
    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    .line 232
    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->isRegistered()Z

    move-result v12

    if-eqz v12, :cond_10

    move-object v4, v2

    .line 233
    goto/16 :goto_1

    .line 235
    :cond_10
    if-nez v3, :cond_11

    .line 236
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    :cond_11
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 242
    :cond_12
    sget-boolean v12, Lcom/google/android/location/j/a;->b:Z

    if-eqz v12, :cond_7

    const-string v12, "SdkSpecific18"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Ignoring non-LTE cellInfo: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 253
    :cond_13
    if-eqz v4, :cond_15

    .line 254
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v4, v3}, Lcom/google/android/location/os/real/SdkSpecific18;->a(JLandroid/telephony/CellInfoGsm;Ljava/util/Collection;)Lcom/google/android/location/f/g;

    move-result-object v2

    .line 263
    :goto_2
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_14

    const-string v3, "SdkSpecific18"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "new API CellState is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_14
    if-nez v9, :cond_19

    .line 280
    if-nez v2, :cond_18

    .line 281
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 255
    :cond_15
    if-eqz v6, :cond_16

    .line 256
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v6, v5}, Lcom/google/android/location/os/real/SdkSpecific18;->a(JLandroid/telephony/CellInfoWcdma;Ljava/util/List;)Lcom/google/android/location/f/g;

    move-result-object v2

    goto :goto_2

    .line 257
    :cond_16
    if-eqz v8, :cond_17

    .line 258
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8, v7}, Lcom/google/android/location/os/real/SdkSpecific18;->a(JLandroid/telephony/CellInfoLte;Ljava/util/Collection;)Lcom/google/android/location/f/ab;

    move-result-object v2

    goto :goto_2

    .line 260
    :cond_17
    const/4 v2, 0x0

    goto :goto_2

    .line 283
    :cond_18
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/location/f/g;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    move-object v2, v3

    goto/16 :goto_0

    .line 286
    :cond_19
    if-nez v2, :cond_1b

    .line 287
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1a

    const-string v2, "SdkSpecific18"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "returning old-api singleton, cellState is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_1a
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/location/f/g;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    goto/16 :goto_0

    .line 293
    :cond_1b
    invoke-virtual {v9}, Lcom/google/android/location/f/g;->i()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v2, v9}, Lcom/google/android/location/f/g;->b(Lcom/google/android/location/f/g;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 294
    :cond_1c
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/location/f/g;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    move-object v2, v3

    goto/16 :goto_0

    .line 300
    :cond_1d
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/location/f/g;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v9, v3, v2

    move-object v2, v3

    goto/16 :goto_0
.end method
