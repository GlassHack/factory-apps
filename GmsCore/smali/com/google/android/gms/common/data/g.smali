.class public Lcom/google/android/gms/common/data/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[Ljava/lang/String;

.field final b:Ljava/util/ArrayList;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/HashMap;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/data/g;->a:[Ljava/lang/String;

    .line 765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/g;->b:Ljava/util/ArrayList;

    .line 766
    iput-object p2, p0, Lcom/google/android/gms/common/data/g;->c:Ljava/lang/String;

    .line 767
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/g;->d:Ljava/util/HashMap;

    .line 768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/g;->e:Z

    .line 769
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/data/g;->f:Ljava/lang/String;

    .line 770
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/data/g;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    .prologue
    .line 985
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/g;I)V

    return-object v0
.end method

.method public a(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/g;
    .locals 4

    .prologue
    .line 852
    invoke-static {p1}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;)V

    .line 855
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 856
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    .line 857
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 858
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 860
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/data/g;->a(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/g;
    .locals 3

    .prologue
    .line 782
    invoke-static {p1}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;)V

    .line 783
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/data/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/common/data/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/g;->e:Z

    .line 790
    return-object p0
.end method
