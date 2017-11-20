.class public final Lcom/google/android/location/places/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:J

.field private static final b:Lcom/google/android/location/f/aj;

.field private static final c:Lcom/google/android/location/f/aj;


# instance fields
.field private final d:Lcom/google/android/location/b/am;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/places/ax;->a:J

    .line 36
    new-instance v0, Lcom/google/android/location/places/ay;

    invoke-direct {v0}, Lcom/google/android/location/places/ay;-><init>()V

    sput-object v0, Lcom/google/android/location/places/ax;->b:Lcom/google/android/location/f/aj;

    .line 85
    new-instance v0, Lcom/google/android/location/places/az;

    invoke-direct {v0}, Lcom/google/android/location/places/az;-><init>()V

    sput-object v0, Lcom/google/android/location/places/ax;->c:Lcom/google/android/location/f/aj;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lcom/google/android/location/b/am;

    const/16 v1, 0x3e8

    sget-object v2, Lcom/google/android/location/places/ba;->e:Lcom/google/android/location/f/aj;

    sget-object v3, Lcom/google/android/location/places/ax;->c:Lcom/google/android/location/f/aj;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/b/am;-><init>(ILcom/google/android/location/f/aj;Lcom/google/android/location/f/aj;)V

    iput-object v0, p0, Lcom/google/android/location/places/ax;->d:Lcom/google/android/location/b/am;

    .line 105
    return-void
.end method

.method static synthetic b()Lcom/google/android/location/f/aj;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/location/places/ax;->b:Lcom/google/android/location/f/aj;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/location/places/ba;J)Ljava/util/List;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/location/places/ax;->d:Lcom/google/android/location/b/am;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/b/am;->a(Ljava/lang/Object;J)Lcom/google/android/location/b/a;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    iget-object v0, v0, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/location/places/ax;->d:Lcom/google/android/location/b/am;

    iget-object v0, v0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->clear()V

    .line 130
    return-void
.end method

.method public final a(Lcom/google/android/location/places/ba;Ljava/util/List;J)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 109
    iget-object v1, p0, Lcom/google/android/location/places/ax;->d:Lcom/google/android/location/b/am;

    move-object v3, p1

    move v4, v2

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/location/b/am;->a(ZLjava/lang/Object;ILjava/lang/Object;J)V

    .line 112
    return-void
.end method
