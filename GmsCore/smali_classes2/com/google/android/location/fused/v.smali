.class public final Lcom/google/android/location/fused/v;
.super Lcom/google/android/location/o/k;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/HashMap;

.field private final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Added location request"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Removed location request"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Delivered location"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/fused/v;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/google/android/location/o/k;-><init>(I)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/v;->b:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/v;->c:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method private static a(BB)B
    .locals 2

    .prologue
    .line 116
    and-int/lit8 v0, p1, 0x3f

    shl-int/lit8 v1, p0, 0x6

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private d(Ljava/util/Collection;)B
    .locals 3

    .prologue
    const/16 v1, 0x3f

    .line 71
    iget-object v0, p0, Lcom/google/android/location/fused/v;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 83
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    move v0, v1

    .line 77
    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-byte v0, v0

    .line 81
    iget-object v1, p0, Lcom/google/android/location/fused/v;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/google/android/location/fused/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/google/android/location/fused/v;->b(I)B

    move-result v0

    .line 89
    and-int/lit16 v1, v0, 0xc0

    shr-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    .line 91
    if-ltz v1, :cond_0

    sget-object v2, Lcom/google/android/location/fused/v;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 92
    :cond_0
    const-string v0, ""

    .line 96
    :goto_0
    return-object v0

    .line 95
    :cond_1
    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    iget-object v2, p0, Lcom/google/android/location/fused/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/location/fused/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 96
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/location/fused/v;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/location/fused/v;->a:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clients "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/location/fused/v;->d(Ljava/util/Collection;)B

    move-result v0

    .line 48
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/google/android/location/fused/v;->a(BB)B

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/v;->a(BJ)V

    .line 49
    return-void
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/location/fused/v;->d(Ljava/util/Collection;)B

    move-result v0

    .line 56
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/android/location/fused/v;->a(BB)B

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/v;->a(BJ)V

    .line 57
    return-void
.end method

.method public final c(Ljava/util/Collection;)V
    .locals 4

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/location/fused/v;->d(Ljava/util/Collection;)B

    move-result v0

    .line 64
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/google/android/location/fused/v;->a(BB)B

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/v;->a(BJ)V

    .line 65
    return-void
.end method
