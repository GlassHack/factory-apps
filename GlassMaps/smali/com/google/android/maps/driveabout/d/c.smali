.class public final Lcom/google/android/maps/driveabout/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/ap;


# static fields
.field private static b:Lcom/google/android/maps/driveabout/d/c;

.field private static final n:Lcom/google/android/maps/driveabout/model/r;


# instance fields
.field private a:Ljava/util/Map;

.field private final c:Lcom/google/android/maps/driveabout/util/g;

.field private final d:Lcom/google/android/maps/driveabout/util/g;

.field private e:Lcom/google/android/maps/driveabout/model/p;

.field private f:Lcom/google/android/maps/driveabout/model/r;

.field private g:Lcom/google/android/maps/driveabout/model/o;

.field private final h:Ljava/util/Set;

.field private final i:Ljava/util/List;

.field private final j:Ljava/util/Set;

.field private final k:Ljava/lang/Object;

.field private final l:Lcom/google/android/maps/driveabout/store/ar;

.field private final m:Lcom/google/android/maps/driveabout/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 213
    new-instance v0, Lcom/google/android/maps/driveabout/model/r;

    new-instance v1, Lcom/google/android/maps/driveabout/model/p;

    sget-object v2, Lcom/google/android/maps/driveabout/model/k;->a:Lcom/google/android/maps/driveabout/model/k;

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/model/p;-><init>(Lcom/google/android/maps/driveabout/model/k;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/r;-><init>(Lcom/google/android/maps/driveabout/model/p;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/d/c;->n:Lcom/google/android/maps/driveabout/model/r;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/store/ar;)V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 115
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->a:Ljava/util/Map;

    .line 177
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->h:Ljava/util/Set;

    .line 183
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->i:Ljava/util/List;

    .line 191
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->j:Ljava/util/Set;

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->k:Ljava/lang/Object;

    .line 258
    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    .line 259
    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->d:Lcom/google/android/maps/driveabout/util/g;

    .line 260
    iput-object p1, p0, Lcom/google/android/maps/driveabout/d/c;->l:Lcom/google/android/maps/driveabout/store/ar;

    .line 261
    new-instance v0, Lcom/google/android/maps/driveabout/d/e;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/d/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->m:Lcom/google/android/maps/driveabout/d/a;

    .line 262
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/store/ar;)Lcom/google/android/maps/driveabout/d/c;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/google/android/maps/driveabout/d/c;->b:Lcom/google/android/maps/driveabout/d/c;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcom/google/android/maps/driveabout/d/c;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/d/c;-><init>(Lcom/google/android/maps/driveabout/store/ar;)V

    sput-object v0, Lcom/google/android/maps/driveabout/d/c;->b:Lcom/google/android/maps/driveabout/d/c;

    .line 231
    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/d/c;->b:Lcom/google/android/maps/driveabout/d/c;

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/model/o;)Lcom/google/android/maps/driveabout/model/r;
    .locals 5

    .prologue
    .line 634
    const/4 v1, 0x0

    .line 636
    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/o;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/r;

    .line 638
    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/o;->c()Lcom/google/android/maps/driveabout/model/q;

    move-result-object v0

    .line 640
    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/maps/driveabout/d/c;->n:Lcom/google/android/maps/driveabout/model/r;

    .line 641
    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/o;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 642
    sget-object v3, Lcom/google/android/maps/driveabout/d/c;->n:Lcom/google/android/maps/driveabout/model/r;

    if-eq v0, v3, :cond_0

    .line 643
    const/4 v1, 0x1

    .line 646
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    if-eqz v1, :cond_1

    .line 649
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/d/c;->b(Lcom/google/android/maps/driveabout/model/o;)V

    .line 651
    :cond_1
    return-object v0

    .line 640
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/q;->a()Lcom/google/android/maps/driveabout/model/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 491
    iget-object v1, p0, Lcom/google/android/maps/driveabout/d/c;->a:Ljava/util/Map;

    monitor-enter v1

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/d/c;Lcom/google/android/maps/driveabout/model/o;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/d/c;->b(Lcom/google/android/maps/driveabout/model/o;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/model/o;Lcom/google/android/maps/driveabout/model/r;)V
    .locals 6

    .prologue
    .line 736
    invoke-virtual {p1, p2}, Lcom/google/android/maps/driveabout/model/o;->a(Lcom/google/android/maps/driveabout/model/r;)Lcom/google/android/maps/driveabout/model/q;

    move-result-object v1

    .line 737
    if-eqz v1, :cond_1

    .line 738
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/q;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/p;

    .line 742
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/q;->a()Lcom/google/android/maps/driveabout/model/r;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/maps/driveabout/d/c;->a(Lcom/google/android/maps/driveabout/model/p;Lcom/google/android/maps/driveabout/model/r;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    iget-object v3, p0, Lcom/google/android/maps/driveabout/d/c;->l:Lcom/google/android/maps/driveabout/store/ar;

    new-instance v4, Lcom/google/android/maps/driveabout/d/d;

    invoke-direct {v4, p0}, Lcom/google/android/maps/driveabout/d/d;-><init>(Lcom/google/android/maps/driveabout/d/c;)V

    invoke-virtual {v3, v0, v4}, Lcom/google/android/maps/driveabout/store/ar;->a(Lcom/google/android/maps/driveabout/model/p;Lcom/google/android/maps/driveabout/store/ap;)V

    goto :goto_0

    .line 757
    :cond_1
    const-string v0, "IndoorState"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 758
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/o;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x25

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to look up level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in building "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 757
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_2
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/model/p;Lcom/google/android/maps/driveabout/model/r;Lcom/google/android/maps/driveabout/model/r;)V
    .locals 6

    .prologue
    .line 697
    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->d:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 699
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->l:Lcom/google/android/maps/driveabout/store/ar;

    .line 700
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/model/r;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/ar;->a(Lcom/google/android/maps/driveabout/model/p;)Lcom/google/android/maps/driveabout/model/q;

    move-result-object v3

    .line 701
    if-nez v3, :cond_0

    .line 702
    monitor-exit v2

    .line 730
    :goto_0
    return-void

    .line 707
    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/d/c;->n:Lcom/google/android/maps/driveabout/model/r;

    if-ne p2, v0, :cond_2

    .line 710
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    move-object v1, v0

    .line 719
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/q;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/p;

    .line 720
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/model/p;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 723
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 724
    iget-object v4, p0, Lcom/google/android/maps/driveabout/d/c;->d:Lcom/google/android/maps/driveabout/util/g;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    .line 725
    invoke-virtual {v5, v0}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 724
    invoke-virtual {v4, v0, v5}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 726
    iget-object v4, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    sget-object v5, Lcom/google/android/maps/driveabout/d/c;->n:Lcom/google/android/maps/driveabout/model/r;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 712
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->l:Lcom/google/android/maps/driveabout/store/ar;

    .line 713
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/r;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/ar;->a(Lcom/google/android/maps/driveabout/model/p;)Lcom/google/android/maps/driveabout/model/q;

    move-result-object v0

    .line 714
    if-nez v0, :cond_3

    .line 715
    monitor-exit v2

    goto :goto_0

    .line 717
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/q;->c()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 729
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/model/p;Lcom/google/android/maps/driveabout/model/r;)Z
    .locals 3

    .prologue
    .line 675
    iget-object v1, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/r;

    .line 677
    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/model/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    const/4 v0, 0x0

    monitor-exit v1

    .line 685
    :goto_0
    return v0

    .line 680
    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 681
    if-eqz v0, :cond_1

    .line 682
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/d/c;->a(Lcom/google/android/maps/driveabout/model/p;Lcom/google/android/maps/driveabout/model/r;Lcom/google/android/maps/driveabout/model/r;)V

    .line 684
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    const/4 v0, 0x1

    goto :goto_0

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 620
    iget-object v1, p0, Lcom/google/android/maps/driveabout/d/c;->a:Ljava/util/Map;

    monitor-enter v1

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/model/o;)V
    .locals 3

    .prologue
    .line 656
    iget-object v1, p0, Lcom/google/android/maps/driveabout/d/c;->a:Ljava/util/Map;

    monitor-enter v1

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/model/p;ILcom/google/android/maps/driveabout/model/o;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 282
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 283
    const-string v0, "IndoorState"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Building id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    if-nez p2, :cond_0

    .line 289
    iget-object v3, p0, Lcom/google/android/maps/driveabout/d/c;->k:Ljava/lang/Object;

    monitor-enter v3

    .line 290
    :try_start_0
    iget-object v4, p0, Lcom/google/android/maps/driveabout/d/c;->f:Lcom/google/android/maps/driveabout/model/r;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/d/c;->f:Lcom/google/android/maps/driveabout/model/r;

    .line 291
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/r;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/maps/driveabout/model/p;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 292
    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->f:Lcom/google/android/maps/driveabout/model/r;

    .line 293
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/maps/driveabout/d/c;->f:Lcom/google/android/maps/driveabout/model/r;

    .line 295
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    if-eqz v2, :cond_3

    .line 298
    invoke-direct {p0, p3, v2}, Lcom/google/android/maps/driveabout/d/c;->a(Lcom/google/android/maps/driveabout/model/o;Lcom/google/android/maps/driveabout/model/r;)V

    .line 303
    :cond_3
    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/d/c;->a(Lcom/google/android/maps/driveabout/model/o;)Lcom/google/android/maps/driveabout/model/r;

    .line 309
    iget-object v3, p0, Lcom/google/android/maps/driveabout/d/c;->k:Ljava/lang/Object;

    monitor-enter v3

    .line 310
    :try_start_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->e:Lcom/google/android/maps/driveabout/model/p;

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/model/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 312
    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->g:Lcom/google/android/maps/driveabout/model/o;

    if-eqz v2, :cond_4

    .line 313
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/model/o;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/d/c;->g:Lcom/google/android/maps/driveabout/model/o;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/o;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/maps/driveabout/model/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 316
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/model/o;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 317
    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->g:Lcom/google/android/maps/driveabout/model/o;

    if-eqz v2, :cond_8

    .line 318
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->g:Lcom/google/android/maps/driveabout/model/o;

    move v2, v0

    .line 326
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/maps/driveabout/d/c;->e:Lcom/google/android/maps/driveabout/model/p;

    .line 328
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    if-eqz v2, :cond_5

    .line 331
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/d/c;->a()V

    .line 336
    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 337
    :try_start_2
    iget-object v3, p0, Lcom/google/android/maps/driveabout/d/c;->h:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 338
    iget-object v1, p0, Lcom/google/android/maps/driveabout/d/c;->h:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 339
    iget-object v1, p0, Lcom/google/android/maps/driveabout/d/c;->i:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 345
    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/d/c;->b()V

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 322
    :cond_6
    :try_start_3
    iput-object p3, p0, Lcom/google/android/maps/driveabout/d/c;->g:Lcom/google/android/maps/driveabout/model/o;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v2, v0

    .line 323
    goto :goto_1

    .line 328
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    .line 342
    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_1

    :cond_9
    move v2, v1

    goto :goto_2
.end method
