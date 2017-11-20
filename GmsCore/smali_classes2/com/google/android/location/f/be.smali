.class public final Lcom/google/android/location/f/be;
.super Lcom/google/android/location/f/y;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/location/f/bh;

.field public final g:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;JLcom/google/android/location/f/bh;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/location/f/y;-><init>(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;J)V

    .line 42
    iput p1, p0, Lcom/google/android/location/f/be;->a:I

    .line 43
    iput-object p6, p0, Lcom/google/android/location/f/be;->b:Lcom/google/android/location/f/bh;

    .line 44
    iput-object p7, p0, Lcom/google/android/location/f/be;->g:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    packed-switch p0, :pswitch_data_0

    .line 101
    const-string v0, "UNKONWN"

    :goto_0
    return-object v0

    .line 92
    :pswitch_0
    const-string v0, "CircleOverlap"

    goto :goto_0

    .line 94
    :pswitch_1
    const-string v0, "MaxLRE"

    goto :goto_0

    .line 96
    :pswitch_2
    const-string v0, "Indoor"

    goto :goto_0

    .line 98
    :pswitch_3
    const-string v0, "Gpwle"

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/io/PrintWriter;Lcom/google/android/location/f/be;)V
    .locals 1

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/location/f/be;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/be;)V
    .locals 4

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "WifiLocatorResult [type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget v0, p1, Lcom/google/android/location/f/be;->a:I

    invoke-static {v0}, Lcom/google/android/location/f/be;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v0, ",wifiScan="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v0, p1, Lcom/google/android/location/f/be;->b:Lcom/google/android/location/f/bh;

    invoke-static {p0, v0}, Lcom/google/android/location/f/bh;->a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/bh;)V

    .line 63
    const-string v0, ", Cache={"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, p1, Lcom/google/android/location/f/be;->g:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 65
    const/4 v0, 0x1

    .line 66
    iget-object v1, p1, Lcom/google/android/location/f/be;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    if-nez v1, :cond_1

    .line 68
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_1
    const/4 v1, 0x0

    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v3, "="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ay;

    invoke-static {p0, v0}, Lcom/google/android/location/f/ay;->a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/ay;)V

    goto :goto_1

    .line 76
    :cond_2
    const-string v0, "}, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {p0, p1}, Lcom/google/android/location/f/y;->a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/y;)V

    .line 78
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    invoke-static {v0, p0}, Lcom/google/android/location/f/be;->a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/be;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
