.class public final Lcom/google/android/location/places/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/h/s;


# static fields
.field private static final d:J


# instance fields
.field private final a:Lcom/google/android/location/places/b;

.field private final b:Lcom/google/android/location/b/p;

.field private final c:Lcom/google/android/location/k/b;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/places/ap;->d:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/places/b;Lcom/google/android/location/k/b;)V
    .locals 8

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/places/ap;->e:J

    .line 59
    iput-object p2, p0, Lcom/google/android/location/places/ap;->a:Lcom/google/android/location/places/b;

    .line 60
    iput-object p3, p0, Lcom/google/android/location/places/ap;->c:Lcom/google/android/location/k/b;

    .line 62
    new-instance v1, Lcom/google/android/location/os/real/ar;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/google/android/location/os/real/ar;-><init>(Landroid/content/Context;Lcom/google/android/location/os/e;)V

    .line 63
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/google/android/location/k/e;->b()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "placesense"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v3, Lcom/google/android/location/os/real/aq;

    sget-object v0, Lcom/google/android/location/d/a;->s:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "places_keyfile"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, p1, v4, v5, v0}, Lcom/google/android/location/os/real/aq;-><init>(Landroid/content/Context;JLjava/io/File;)V

    .line 67
    invoke-interface {v1}, Lcom/google/android/location/k/e;->d()Lcom/google/android/location/k/i;

    move-result-object v0

    invoke-interface {v3}, Lcom/google/android/location/k/d;->c()[B

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/location/b/p;->a(Lcom/google/android/location/k/i;Ljava/io/File;[BLcom/google/android/location/k/e;)Lcom/google/android/location/b/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ap;->b:Lcom/google/android/location/b/p;

    .line 69
    iget-object v0, p0, Lcom/google/android/location/places/ap;->b:Lcom/google/android/location/b/p;

    invoke-virtual {v0}, Lcom/google/android/location/b/p;->a()V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/ap;)Lcom/google/android/location/k/b;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/location/places/ap;->c:Lcom/google/android/location/k/b;

    return-object v0
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/google/android/location/places/ap;->e:J

    sub-long v0, p1, v0

    sget-wide v2, Lcom/google/android/location/places/ap;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/google/android/location/places/ap;->b:Lcom/google/android/location/b/p;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/location/places/ap;->b:Lcom/google/android/location/b/p;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/b/p;->a(J)V

    .line 140
    iget-object v0, p0, Lcom/google/android/location/places/ap;->b:Lcom/google/android/location/b/p;

    invoke-virtual {v0}, Lcom/google/android/location/b/p;->b()V

    .line 142
    :cond_0
    iput-wide p1, p0, Lcom/google/android/location/places/ap;->e:J

    .line 144
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/google/android/location/places/ap;)Lcom/google/android/location/b/p;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/location/places/ap;->b:Lcom/google/android/location/b/p;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/location/f/s;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 112
    iget-object v0, p0, Lcom/google/android/location/places/ap;->b:Lcom/google/android/location/b/p;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/google/android/location/places/ap;->b:Lcom/google/android/location/b/p;

    iget-object v2, p0, Lcom/google/android/location/places/ap;->c:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/location/b/p;->a(Ljava/lang/String;J)Lcom/google/android/location/f/s;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 118
    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Lcom/google/android/location/places/aq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/location/places/aq;-><init>(Lcom/google/android/location/places/ap;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/places/ap;->a:Lcom/google/android/location/places/b;

    new-instance v3, Lcom/google/android/location/m/a/ai;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ai;-><init>()V

    new-instance v4, Lcom/google/android/location/m/a/bw;

    invoke-direct {v4}, Lcom/google/android/location/m/a/bw;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/location/m/a/bw;->a:Ljava/lang/Integer;

    iput-object p1, v4, Lcom/google/android/location/m/a/bw;->b:Ljava/lang/String;

    new-array v5, v7, [Lcom/google/android/location/m/a/bw;

    aput-object v4, v5, v6

    iput-object v5, v3, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    new-instance v4, Lcom/google/android/location/m/a/ah;

    invoke-direct {v4}, Lcom/google/android/location/m/a/ah;-><init>()V

    new-array v5, v7, [Lcom/google/android/location/m/a/ai;

    aput-object v3, v5, v6

    iput-object v5, v4, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    const-string v3, "Places"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Places"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getting level selector model from server. Request: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/location/o/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, v4, v0}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/m/a/ah;Lcom/google/j/b/n;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/location/places/ap;->c:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/location/places/ap;->a(J)V

    move-object v0, v1

    .line 126
    goto :goto_0
.end method

.method public final a(Ljava/util/Set;)Ljava/util/List;
    .locals 10

    .prologue
    .line 78
    const-string v0, "Places"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request mac->cluster mapping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 84
    iget-object v4, p0, Lcom/google/android/location/places/ap;->b:Lcom/google/android/location/b/p;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v5, p0, Lcom/google/android/location/places/ap;->c:Lcom/google/android/location/k/b;

    invoke-interface {v5}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/google/android/location/b/p;->a(JJ)Ljava/lang/String;

    move-result-object v4

    .line 85
    if-eqz v4, :cond_0

    .line 86
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/google/android/location/places/ap;->c:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v4

    new-instance v0, Lcom/google/android/location/places/ar;

    invoke-direct {v0, p0, v4, v5}, Lcom/google/android/location/places/ar;-><init>(Lcom/google/android/location/places/ap;J)V

    iget-object v3, p0, Lcom/google/android/location/places/ap;->a:Lcom/google/android/location/places/b;

    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/google/android/location/places/b;->a(Ljava/util/List;Lcom/google/j/b/n;J)V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/ap;->c:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/location/places/ap;->a(J)V

    .line 97
    return-object v1
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/location/f/p;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method
