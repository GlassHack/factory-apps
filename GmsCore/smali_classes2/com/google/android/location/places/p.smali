.class public final Lcom/google/android/location/places/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:J

.field private static final b:Lcom/google/android/location/f/aj;

.field private static final c:Lcom/google/android/location/f/aj;

.field private static final d:Lcom/google/android/location/f/aj;


# instance fields
.field private final e:Lcom/google/android/location/b/am;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/places/p;->a:J

    .line 64
    new-instance v0, Lcom/google/android/location/places/q;

    invoke-direct {v0}, Lcom/google/android/location/places/q;-><init>()V

    sput-object v0, Lcom/google/android/location/places/p;->b:Lcom/google/android/location/f/aj;

    .line 94
    new-instance v0, Lcom/google/android/location/places/r;

    invoke-direct {v0}, Lcom/google/android/location/places/r;-><init>()V

    sput-object v0, Lcom/google/android/location/places/p;->c:Lcom/google/android/location/f/aj;

    .line 108
    new-instance v0, Lcom/google/android/location/places/s;

    invoke-direct {v0}, Lcom/google/android/location/places/s;-><init>()V

    sput-object v0, Lcom/google/android/location/places/p;->d:Lcom/google/android/location/f/aj;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/google/android/location/b/am;

    const/16 v1, 0x3e8

    sget-object v2, Lcom/google/android/location/f/ap;->a:Lcom/google/android/location/f/aj;

    sget-object v3, Lcom/google/android/location/places/p;->d:Lcom/google/android/location/f/aj;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/b/am;-><init>(ILcom/google/android/location/f/aj;Lcom/google/android/location/f/aj;)V

    iput-object v0, p0, Lcom/google/android/location/places/p;->e:Lcom/google/android/location/b/am;

    .line 126
    return-void
.end method

.method static synthetic b()Lcom/google/android/location/f/aj;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/location/places/p;->b:Lcom/google/android/location/f/aj;

    return-object v0
.end method

.method static synthetic c()Lcom/google/android/location/f/aj;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/location/places/p;->c:Lcom/google/android/location/f/aj;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)Lcom/google/android/gms/location/places/internal/PlaceImpl;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/location/places/p;->e:Lcom/google/android/location/b/am;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/b/am;->a(Ljava/lang/Object;J)Lcom/google/android/location/b/a;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    iget-object v0, v0, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/location/places/p;->e:Lcom/google/android/location/b/am;

    iget-object v0, v0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->clear()V

    .line 149
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/places/internal/PlaceImpl;J)V
    .locals 8

    .prologue
    .line 129
    iget-object v1, p0, Lcom/google/android/location/places/p;->e:Lcom/google/android/location/b/am;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->q()J

    move-result-wide v4

    long-to-int v4, v4

    move-object v5, p1

    move-wide v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/location/b/am;->a(ZLjava/lang/Object;ILjava/lang/Object;J)V

    .line 132
    return-void
.end method
