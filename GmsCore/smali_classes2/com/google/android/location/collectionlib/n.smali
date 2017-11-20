.class final Lcom/google/android/location/collectionlib/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;

.field volatile b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/location/collectionlib/i;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private f:Ljava/util/Map;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/location/collectionlib/i;Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 702
    iput-object p1, p0, Lcom/google/android/location/collectionlib/n;->c:Lcom/google/android/location/collectionlib/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    invoke-static {}, Lcom/google/android/location/collectionlib/db;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/n;->e:Ljava/util/List;

    .line 691
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/n;->f:Ljava/util/Map;

    .line 693
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/n;->g:Ljava/util/Map;

    .line 699
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/n;->h:Ljava/util/Map;

    .line 703
    iput-object p2, p0, Lcom/google/android/location/collectionlib/n;->a:Ljava/util/List;

    .line 704
    iput-object p3, p0, Lcom/google/android/location/collectionlib/n;->b:Ljava/lang/String;

    .line 705
    invoke-static {}, Lcom/google/android/location/collectionlib/db;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/n;->d:Ljava/util/List;

    .line 706
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/google/android/location/collectionlib/n;->d:Ljava/util/List;

    sget-object v2, Lcom/google/android/location/collectionlib/o;->a:Lcom/google/android/location/collectionlib/o;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_0
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;)Lcom/google/android/location/collectionlib/da;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 841
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/google/android/location/collectionlib/da;

    invoke-direct {v2}, Lcom/google/android/location/collectionlib/da;-><init>()V

    .line 842
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 843
    if-ltz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v4, "File not found."

    invoke-static {v0, v4}, Lcom/google/android/location/collectionlib/db;->a(ZLjava/lang/Object;)V

    .line 844
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/o;

    .line 845
    sget-object v3, Lcom/google/android/location/collectionlib/o;->a:Lcom/google/android/location/collectionlib/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v3, :cond_1

    move-object v0, v1

    .line 877
    :goto_1
    monitor-exit p0

    return-object v0

    .line 843
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 848
    :cond_1
    :try_start_1
    sget-object v3, Lcom/google/android/location/collectionlib/m;->a:[I

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/o;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 862
    :goto_2
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 863
    if-nez v0, :cond_2

    move-object v0, v2

    .line 865
    goto :goto_1

    .line 850
    :pswitch_0
    iget v0, v2, Lcom/google/android/location/collectionlib/da;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/google/android/location/collectionlib/da;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 853
    :pswitch_1
    :try_start_2
    iget v0, v2, Lcom/google/android/location/collectionlib/da;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/google/android/location/collectionlib/da;->c:I

    goto :goto_2

    .line 856
    :pswitch_2
    iget v0, v2, Lcom/google/android/location/collectionlib/da;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/google/android/location/collectionlib/da;->b:I

    goto :goto_2

    .line 859
    :pswitch_3
    iget v0, v2, Lcom/google/android/location/collectionlib/da;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/google/android/location/collectionlib/da;->d:I

    goto :goto_2

    .line 867
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 868
    if-nez v0, :cond_3

    move-object v0, v1

    .line 869
    goto :goto_1

    .line 871
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 872
    iget v0, v2, Lcom/google/android/location/collectionlib/da;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/google/android/location/collectionlib/da;->e:I

    goto :goto_3

    .line 874
    :cond_4
    iget v0, v2, Lcom/google/android/location/collectionlib/da;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/google/android/location/collectionlib/da;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_5
    move-object v0, v2

    .line 877
    goto :goto_1

    .line 848
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final declared-synchronized a()Ljava/util/List;
    .locals 4

    .prologue
    .line 724
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 725
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/collectionlib/n;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 726
    iget-object v2, p0, Lcom/google/android/location/collectionlib/n;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/android/location/collectionlib/o;->a:Lcom/google/android/location/collectionlib/o;

    if-ne v2, v3, :cond_0

    .line 727
    iget-object v2, p0, Lcom/google/android/location/collectionlib/n;->d:Ljava/util/List;

    sget-object v3, Lcom/google/android/location/collectionlib/o;->d:Lcom/google/android/location/collectionlib/o;

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 728
    iget-object v2, p0, Lcom/google/android/location/collectionlib/n;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_1
    monitor-exit p0

    return-object v1

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 2

    .prologue
    .line 712
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    monitor-exit p0

    return-void

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(IZ)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 795
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 796
    const-string v1, "Need to call corresponding addGLocRequest before calling this."

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    iget-object v1, p0, Lcom/google/android/location/collectionlib/n;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 799
    iget-object v4, p0, Lcom/google/android/location/collectionlib/n;->g:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 800
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v4, v2

    :goto_0
    const-string v5, "Need to call corresponding addGLocRequest before calling this."

    invoke-static {v4, v5}, Lcom/google/android/location/collectionlib/db;->b(ZLjava/lang/Object;)V

    .line 802
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v4, v2

    :goto_1
    const-string v5, "Inconsistent state."

    invoke-static {v4, v5}, Lcom/google/android/location/collectionlib/db;->b(ZLjava/lang/Object;)V

    .line 803
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 804
    if-ltz v4, :cond_3

    move v1, v2

    :goto_2
    const-string v2, "Need to call corresponding addGLocRequest before calling this."

    invoke-static {v1, v2}, Lcom/google/android/location/collectionlib/db;->b(ZLjava/lang/Object;)V

    .line 806
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    monitor-exit p0

    return-void

    :cond_1
    move v4, v3

    .line 800
    goto :goto_0

    :cond_2
    move v4, v3

    .line 802
    goto :goto_1

    :cond_3
    move v1, v3

    .line 804
    goto :goto_2

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 768
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->f:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->g:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 773
    iget-object v1, p0, Lcom/google/android/location/collectionlib/n;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 775
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v5

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 776
    if-ne v2, p2, :cond_4

    move v2, v3

    :goto_1
    move v4, v2

    .line 779
    goto :goto_0

    .line 780
    :cond_1
    if-nez v4, :cond_2

    .line 781
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->h:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    const-string v0, "Duplicated seqNum (the same seqNum exists in more than one file)!"

    invoke-static {v3, v0}, Lcom/google/android/location/collectionlib/db;->b(ZLjava/lang/Object;)V

    .line 786
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->h:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    monitor-exit p0

    return-void

    :cond_3
    move v3, v5

    .line 784
    goto :goto_2

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v2, v4

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/google/android/location/collectionlib/o;)V
    .locals 4

    .prologue
    .line 756
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 757
    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in upload list."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/collectionlib/db;->b(ZLjava/lang/Object;)V

    .line 758
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->d:Ljava/util/List;

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    monitor-exit p0

    return-void

    .line 757
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/google/android/location/collectionlib/da;
    .locals 5

    .prologue
    .line 818
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/android/location/collectionlib/da;

    invoke-direct {v1}, Lcom/google/android/location/collectionlib/da;-><init>()V

    .line 819
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 820
    invoke-virtual {p0, v0}, Lcom/google/android/location/collectionlib/n;->a(Ljava/lang/String;)Lcom/google/android/location/collectionlib/da;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 821
    if-nez v0, :cond_0

    .line 822
    const/4 v0, 0x0

    .line 827
    :goto_1
    monitor-exit p0

    return-object v0

    .line 824
    :cond_0
    :try_start_1
    iget v3, v1, Lcom/google/android/location/collectionlib/da;->a:I

    iget v4, v0, Lcom/google/android/location/collectionlib/da;->a:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/location/collectionlib/da;->a:I

    iget v3, v1, Lcom/google/android/location/collectionlib/da;->b:I

    iget v4, v0, Lcom/google/android/location/collectionlib/da;->b:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/location/collectionlib/da;->b:I

    iget v3, v1, Lcom/google/android/location/collectionlib/da;->c:I

    iget v4, v0, Lcom/google/android/location/collectionlib/da;->c:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/location/collectionlib/da;->c:I

    iget v3, v1, Lcom/google/android/location/collectionlib/da;->d:I

    iget v4, v0, Lcom/google/android/location/collectionlib/da;->d:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/location/collectionlib/da;->d:I

    iget v3, v1, Lcom/google/android/location/collectionlib/da;->e:I

    iget v4, v0, Lcom/google/android/location/collectionlib/da;->e:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/location/collectionlib/da;->e:I

    iget v3, v1, Lcom/google/android/location/collectionlib/da;->f:I

    iget v0, v0, Lcom/google/android/location/collectionlib/da;->f:I

    add-int/2addr v0, v3

    iput v0, v1, Lcom/google/android/location/collectionlib/da;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v0, v1

    .line 827
    goto :goto_1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 914
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/location/collectionlib/n;->c:Lcom/google/android/location/collectionlib/i;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)Z
    .locals 2

    .prologue
    .line 716
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 903
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seqNum #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not exist. addGLocRequest need to be called before this."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    monitor-exit p0

    return-object v0

    .line 903
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .locals 6

    .prologue
    .line 885
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/location/collectionlib/db;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 886
    iget-object v0, p0, Lcom/google/android/location/collectionlib/n;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 887
    iget-object v1, p0, Lcom/google/android/location/collectionlib/n;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 888
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 889
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 890
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 891
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 895
    :cond_2
    monitor-exit p0

    return-object v4

    .line 885
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 918
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/location/collectionlib/n;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    monitor-exit p0

    return-void

    .line 918
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
