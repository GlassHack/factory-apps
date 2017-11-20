.class public final Lcom/google/android/location/d/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/d/l;


# static fields
.field private static final a:Lcom/google/android/location/d/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/location/d/k;

    invoke-direct {v0}, Lcom/google/android/location/d/k;-><init>()V

    sput-object v0, Lcom/google/android/location/d/k;->a:Lcom/google/android/location/d/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static a()Lcom/google/android/location/d/k;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/location/d/k;->a:Lcom/google/android/location/d/k;

    return-object v0
.end method

.method public static a(Lcom/google/android/location/f/bb;)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 56
    iget-wide v4, p0, Lcom/google/android/location/f/bb;->b:J

    iget-object v3, p0, Lcom/google/android/location/f/bb;->c:Ljava/lang/String;

    const-wide/high16 v6, 0x1000000000000L

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    cmp-long v2, v4, v8

    if-ltz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid MAC Address: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null SSID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide v6, 0x20000000000L

    and-long/2addr v4, v6

    cmp-long v2, v4, v8

    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    if-eqz v2, :cond_4

    move v2, v0

    :goto_2
    if-nez v2, :cond_5

    :goto_3
    return v0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lcom/google/android/e/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 42
    if-eqz v0, :cond_0

    .line 45
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x11

    if-eq v0, v6, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid MAC Address: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_7

    add-int/lit8 v6, v0, 0x1

    rem-int/lit8 v6, v6, 0x3

    if-nez v6, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_6

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-lt v6, v7, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x39

    if-le v6, v7, :cond_6

    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x41

    if-lt v6, v7, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x46

    if-le v6, v7, :cond_6

    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-lt v6, v7, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x66

    if-le v6, v7, :cond_6

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    if-nez v5, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null SSID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz v4, :cond_a

    const-string v0, "2367abefABEF"

    const/4 v6, 0x2

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    :goto_3
    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 45
    :cond_a
    invoke-static {v5}, Lcom/google/android/e/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 52
    :cond_b
    return-void
.end method
