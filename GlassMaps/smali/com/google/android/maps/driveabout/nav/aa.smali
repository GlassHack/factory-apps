.class public final Lcom/google/android/maps/driveabout/nav/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/maps/driveabout/nav/w;

.field private b:Lcom/google/android/maps/driveabout/model/ab;

.field private c:D

.field private d:D

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/nav/x;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/aa;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/aa;D)D
    .locals 0

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/nav/aa;->d:D

    return-wide p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/aa;I)I
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/google/android/maps/driveabout/nav/aa;->e:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/aa;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/aa;->b:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/aa;->b:Lcom/google/android/maps/driveabout/model/ab;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/nav/w;)Lcom/google/android/maps/driveabout/nav/w;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/aa;->a:Lcom/google/android/maps/driveabout/nav/w;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/nav/aa;)D
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/aa;->d:D

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/nav/aa;D)D
    .locals 0

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/nav/aa;->c:D

    return-wide p1
.end method


# virtual methods
.method public final a(D)Lcom/google/android/maps/driveabout/nav/aa;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/google/android/maps/driveabout/nav/aa;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/nav/aa;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/aa;->a:Lcom/google/android/maps/driveabout/nav/w;

    iput-object v1, v0, Lcom/google/android/maps/driveabout/nav/aa;->a:Lcom/google/android/maps/driveabout/nav/w;

    .line 125
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/aa;->b:Lcom/google/android/maps/driveabout/model/ab;

    iput-object v1, v0, Lcom/google/android/maps/driveabout/nav/aa;->b:Lcom/google/android/maps/driveabout/model/ab;

    .line 126
    iget-wide v1, p0, Lcom/google/android/maps/driveabout/nav/aa;->c:D

    iput-wide v1, v0, Lcom/google/android/maps/driveabout/nav/aa;->c:D

    .line 127
    iput-wide p1, v0, Lcom/google/android/maps/driveabout/nav/aa;->d:D

    .line 128
    iget v1, p0, Lcom/google/android/maps/driveabout/nav/aa;->e:I

    iput v1, v0, Lcom/google/android/maps/driveabout/nav/aa;->e:I

    .line 129
    return-object v0
.end method

.method public final a()Lcom/google/android/maps/driveabout/nav/w;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/aa;->a:Lcom/google/android/maps/driveabout/nav/w;

    return-object v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/aa;->b:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/aa;->c:D

    return-wide v0
.end method

.method public final d()D
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/aa;->d:D

    return-wide v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/aa;->e:I

    return v0
.end method
