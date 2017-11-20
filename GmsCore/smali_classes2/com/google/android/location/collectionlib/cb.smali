.class public final Lcom/google/android/location/collectionlib/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/location/collectionlib/cb;

.field public static final b:Lcom/google/android/location/collectionlib/cb;

.field public static final c:Lcom/google/android/location/collectionlib/cb;

.field public static final d:Lcom/google/android/location/collectionlib/cb;

.field public static final e:Lcom/google/android/location/collectionlib/cb;

.field public static final f:Lcom/google/android/location/collectionlib/cb;

.field public static final g:Lcom/google/android/location/collectionlib/cb;

.field public static final h:Lcom/google/android/location/collectionlib/cb;

.field public static final i:Lcom/google/android/location/collectionlib/cb;

.field public static final j:Lcom/google/android/location/collectionlib/cb;

.field public static final k:Lcom/google/android/location/collectionlib/cb;

.field public static final l:Lcom/google/android/location/collectionlib/cb;

.field public static final m:Lcom/google/android/location/collectionlib/cb;

.field public static final n:Lcom/google/android/location/collectionlib/cb;

.field public static final o:Lcom/google/android/location/collectionlib/cb;

.field public static final p:Lcom/google/android/location/collectionlib/cb;

.field public static final q:Ljava/util/Set;

.field public static final r:Ljava/util/Set;


# instance fields
.field private final s:I

.field private final t:Z

.field private final u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 22
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const-string v1, "WiFi"

    invoke-direct {v0, v3, v1, v4}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->a:Lcom/google/android/location/collectionlib/cb;

    .line 24
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const-string v1, "cell"

    invoke-direct {v0, v5, v1, v4}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->b:Lcom/google/android/location/collectionlib/cb;

    .line 29
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const-string v1, "orientation"

    invoke-direct {v0, v6, v1, v3}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->c:Lcom/google/android/location/collectionlib/cb;

    .line 31
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const-string v1, "accelerometer"

    invoke-direct {v0, v7, v1, v3}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    .line 33
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const/16 v1, 0x10

    const-string v2, "gyroscope"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->e:Lcom/google/android/location/collectionlib/cb;

    .line 35
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const/16 v1, 0x20

    const-string v2, "magnetic field"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->f:Lcom/google/android/location/collectionlib/cb;

    .line 38
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const/16 v1, 0x40

    const-string v2, "gps"

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->g:Lcom/google/android/location/collectionlib/cb;

    .line 40
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const/16 v1, 0x80

    const-string v2, "gps satellite"

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->h:Lcom/google/android/location/collectionlib/cb;

    .line 43
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const/16 v1, 0x100

    const-string v2, "barometer"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->i:Lcom/google/android/location/collectionlib/cb;

    .line 46
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const/16 v1, 0x200

    const-string v2, "uncal magnetic field"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->j:Lcom/google/android/location/collectionlib/cb;

    .line 49
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const/16 v1, 0x400

    const-string v2, "light"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->k:Lcom/google/android/location/collectionlib/cb;

    .line 52
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const/16 v1, 0x800

    const-string v2, "proximity"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->l:Lcom/google/android/location/collectionlib/cb;

    .line 55
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const/16 v1, 0x1000

    const-string v2, "sound"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->m:Lcom/google/android/location/collectionlib/cb;

    .line 58
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const/16 v1, 0x2000

    const-string v2, "heart rate"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->n:Lcom/google/android/location/collectionlib/cb;

    .line 61
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const/16 v1, 0x4000

    const-string v2, "step counter"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->o:Lcom/google/android/location/collectionlib/cb;

    .line 64
    new-instance v0, Lcom/google/android/location/collectionlib/cb;

    const/high16 v1, -0x80000000

    const-string v2, "unknown"

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/location/collectionlib/cb;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->p:Lcom/google/android/location/collectionlib/cb;

    .line 71
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/google/android/location/collectionlib/cb;

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->a:Lcom/google/android/location/collectionlib/cb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->b:Lcom/google/android/location/collectionlib/cb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->c:Lcom/google/android/location/collectionlib/cb;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->e:Lcom/google/android/location/collectionlib/cb;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->f:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->g:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->h:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->i:Lcom/google/android/location/collectionlib/cb;

    aput-object v1, v0, v7

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->j:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->k:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->l:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->m:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->n:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->o:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cb;->a([Lcom/google/android/location/collectionlib/cb;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->q:Ljava/util/Set;

    .line 74
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/location/collectionlib/cb;

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->c:Lcom/google/android/location/collectionlib/cb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->e:Lcom/google/android/location/collectionlib/cb;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->f:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->i:Lcom/google/android/location/collectionlib/cb;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->j:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->k:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->l:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->n:Lcom/google/android/location/collectionlib/cb;

    aput-object v1, v0, v7

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->o:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cb;->a([Lcom/google/android/location/collectionlib/cb;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/collectionlib/cb;->r:Ljava/util/Set;

    .line 77
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/google/android/location/collectionlib/cb;->s:I

    .line 82
    iput-object p2, p0, Lcom/google/android/location/collectionlib/cb;->u:Ljava/lang/String;

    .line 83
    iput-boolean p3, p0, Lcom/google/android/location/collectionlib/cb;->t:Z

    .line 84
    return-void
.end method

.method static a(Ljava/util/Set;)I
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/cb;

    .line 124
    iget v0, v0, Lcom/google/android/location/collectionlib/cb;->s:I

    or-int/2addr v0, v1

    move v1, v0

    .line 125
    goto :goto_0

    .line 126
    :cond_0
    return v1
.end method

.method static a(I)Ljava/util/Set;
    .locals 4

    .prologue
    .line 133
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 134
    sget-object v0, Lcom/google/android/location/collectionlib/cb;->q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/cb;

    .line 135
    iget v3, v0, Lcom/google/android/location/collectionlib/cb;->s:I

    and-int/2addr v3, p0

    if-eqz v3, :cond_0

    .line 136
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_1
    return-object v1
.end method

.method public static varargs a([Lcom/google/android/location/collectionlib/cb;)Ljava/util/Set;
    .locals 4

    .prologue
    .line 90
    new-instance v1, Ljava/util/HashSet;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 91
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 92
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-object v1
.end method

.method public static b(I)Lcom/google/android/location/collectionlib/cb;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 148
    .line 149
    const/4 v1, 0x0

    .line 150
    sget-object v0, Lcom/google/android/location/collectionlib/cb;->q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/cb;

    .line 151
    iget v5, v0, Lcom/google/android/location/collectionlib/cb;->s:I

    and-int/2addr v5, p0

    if-eqz v5, :cond_2

    .line 153
    add-int/lit8 v1, v1, 0x1

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_1
    move-object v2, v1

    move v1, v0

    .line 155
    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    :goto_2
    return-object v2

    :cond_1
    move-object v2, v3

    goto :goto_2

    :cond_2
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/location/collectionlib/cb;->s:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cb;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/cb;->t:Z

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/android/location/collectionlib/cb;->s:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/android/location/collectionlib/cb;->s:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
