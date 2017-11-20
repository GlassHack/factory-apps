.class public abstract Lcom/google/android/gms/common/server/response/FastJsonResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public h:I

.field public i:[B

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    return-void
.end method

.method public static a([B)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 733
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 734
    invoke-static {p0}, Lcom/google/android/gms/common/util/n;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected static a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 920
    invoke-static {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 923
    :cond_0
    return-object p1
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1376
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1377
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i()Ljava/lang/Class;

    move-result-object v0

    .line 1378
    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    :goto_0
    return-void

    .line 1380
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1381
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1385
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 1391
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1393
    if-lez v0, :cond_0

    .line 1394
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1397
    if-eqz v2, :cond_1

    .line 1398
    invoke-static {p0, p1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 1392
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1401
    :cond_2
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1170
    if-nez p1, :cond_1

    .line 1171
    const-string v0, "FastJsonResponse"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    const-string v0, "FastJsonResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output field ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has a null value, but expected a primitive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_0
    const/4 v0, 0x0

    .line 1178
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 865
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v1

    .line 866
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 867
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 904
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported type for conversion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :pswitch_1
    invoke-static {v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 870
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;I)V

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 874
    :pswitch_2
    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 877
    :pswitch_3
    invoke-static {v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;J)V

    goto :goto_0

    .line 882
    :pswitch_4
    invoke-static {v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;D)V

    goto :goto_0

    .line 887
    :pswitch_5
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 890
    :pswitch_6
    invoke-static {v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 891
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V

    goto :goto_0

    .line 895
    :pswitch_7
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 899
    :pswitch_8
    invoke-static {v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    check-cast v0, [B

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;[B)V

    goto :goto_0

    .line 867
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract a()Ljava/util/HashMap;
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;D)V
    .locals 2

    .prologue
    .line 997
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 998
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 1002
    :goto_0
    return-void

    .line 1000
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;F)V
    .locals 1

    .prologue
    .line 981
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 982
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 986
    :goto_0
    return-void

    .line 984
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;I)V
    .locals 1

    .prologue
    .line 930
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 935
    :goto_0
    return-void

    .line 933
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;J)V
    .locals 2

    .prologue
    .line 964
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 965
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 969
    :goto_0
    return-void

    .line 967
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1047
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1048
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 1052
    :goto_0
    return-void

    .line 1050
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 1125
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;D)V

    .line 1126
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;F)V
    .locals 0

    .prologue
    .line 1116
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;F)V

    .line 1117
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1090
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;I)V

    .line 1091
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 1108
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;J)V

    .line 1109
    return-void
.end method

.method public a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 0

    .prologue
    .line 1184
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 1185
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1152
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0

    .prologue
    .line 1134
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;Ljava/math/BigDecimal;)V

    .line 1135
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 1099
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 1100
    return-void
.end method

.method public a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1189
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1190
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1166
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1167
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1143
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;Z)V

    .line 1144
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 1161
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;[B)V

    .line 1162
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigDecimal;)V
    .locals 1

    .prologue
    .line 1013
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1014
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 1018
    :goto_0
    return-void

    .line 1016
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigDecimal;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 947
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 948
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 952
    :goto_0
    return-void

    .line 950
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 939
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 940
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 944
    :goto_0
    return-void

    .line 942
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->c(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 1072
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1073
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 1077
    :goto_0
    return-void

    .line 1075
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Z)V
    .locals 1

    .prologue
    .line 1030
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1031
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 1035
    :goto_0
    return-void

    .line 1033
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V
    .locals 1

    .prologue
    .line 1063
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1064
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 1068
    :goto_0
    return-void

    .line 1066
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 1225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Double not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 1217
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Float not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Integer not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 1209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Long not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 2

    .prologue
    .line 1265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Concrete type not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "String not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 2

    .prologue
    .line 1233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BigDecimal not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 2

    .prologue
    .line 1201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BigInteger not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Concrete type array not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 1261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "String map not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Boolean not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 1257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "byte[] not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 816
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 817
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->c(Ljava/lang/String;)Z

    move-result v0

    .line 822
    :goto_0
    return v0

    .line 820
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 822
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1345
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v3

    .line 1346
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1348
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Concrete field shouldn\'t be value object: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1352
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e()Z

    .line 1355
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1370
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 1348
    goto :goto_0

    .line 1365
    :catch_0
    move-exception v0

    .line 1367
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1370
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1157
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->i(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1158
    return-void
.end method

.method public final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 956
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 957
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 961
    :goto_0
    return-void

    .line 959
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->d(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 1197
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Integer list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract b(Ljava/lang/String;)Z
.end method

.method protected c(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1095
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1096
    return-void
.end method

.method public final c(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 973
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 978
    :goto_0
    return-void

    .line 976
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->e(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 1205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BigInteger list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 853
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Concrete type arrays not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1104
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->c(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1105
    return-void
.end method

.method public final d(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 989
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 990
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 994
    :goto_0
    return-void

    .line 992
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->f(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 1213
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Long list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 842
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Concrete types not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected e(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1112
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->d(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1113
    return-void
.end method

.method public final e(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 1005
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1006
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 1010
    :goto_0
    return-void

    .line 1008
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->g(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 1221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Float list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected f(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1121
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->e(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1122
    return-void
.end method

.method public final f(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 1022
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1023
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 1027
    :goto_0
    return-void

    .line 1025
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->h(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected f(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 1229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Double list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected g(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1130
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->f(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1131
    return-void
.end method

.method public final g(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 1039
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1040
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 1044
    :goto_0
    return-void

    .line 1042
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->i(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected g(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 1237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BigDecimal list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected h(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1139
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->g(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1140
    return-void
.end method

.method public final h(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 1055
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1056
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    .line 1060
    :goto_0
    return-void

    .line 1058
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected h(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 1245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Boolean list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected i(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1148
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->h(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1149
    return-void
.end method

.method protected i(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 1253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "String list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a()Ljava/util/HashMap;

    move-result-object v3

    .line 1292
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1293
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1294
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 1297
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1298
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v2

    .line 1303
    invoke-static {v1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1304
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1305
    const-string v6, "{"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    :goto_1
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    if-nez v2, :cond_2

    .line 1311
    const-string v0, "null"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1307
    :cond_1
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1313
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1328
    invoke-virtual {v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1329
    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v4, v1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1315
    :pswitch_0
    const-string v0, "\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, v2

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/common/util/g;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1318
    :pswitch_1
    const-string v0, "\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/android/gms/common/util/g;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1322
    :pswitch_2
    check-cast v2, Ljava/util/HashMap;

    .line 1323
    invoke-static {v4, v2}, Lcom/google/android/gms/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 1331
    :cond_3
    invoke-static {v4, v1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1336
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 1337
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1339
    :cond_5
    const-string v0, "{}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1313
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
