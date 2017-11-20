.class public Lcom/google/android/location/activity/a/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static final c:Ljava/util/Comparator;


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/android/location/activity/a/w;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/location/activity/a/w;->a:Z

    .line 26
    new-instance v0, Lcom/google/android/location/activity/a/x;

    invoke-direct {v0}, Lcom/google/android/location/activity/a/x;-><init>()V

    sput-object v0, Lcom/google/android/location/activity/a/w;->c:Ljava/util/Comparator;

    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/location/activity/a/w;->b:Ljava/util/List;

    .line 52
    return-void
.end method

.method public static a(Z)Lcom/google/android/location/activity/a/w;
    .locals 3

    .prologue
    .line 59
    new-instance v1, Lcom/google/android/location/activity/a/w;

    if-eqz p0, :cond_1

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "AllTrees"

    const-string v2, "Creating trees for watch."

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/google/android/location/activity/a/b/a;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/b/a;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/b/b;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/b/b;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/b/c;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/b/c;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/b/d;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/b/d;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/b/e;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/b/e;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/b/f;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/b/f;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/b/g;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/b/g;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/b/h;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/b/h;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/b/i;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/b/i;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/b/j;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/b/j;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/b/k;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/b/k;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/b/l;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/b/l;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/b/m;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/b/m;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {v1, v0}, Lcom/google/android/location/activity/a/w;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_1
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "AllTrees"

    const-string v2, "Creating trees for phone."

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/google/android/location/activity/a/a;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/a;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/b;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/b;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/c;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/c;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/d;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/d;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/e;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/e;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/f;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/f;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/g;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/g;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/h;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/h;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/i;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/i;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/j;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/j;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/k;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/k;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/l;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/l;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/m;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/m;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/location/activity/a/r;)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const v1, 0x39d1b717    # 4.0E-4f

    .line 74
    iget v0, p1, Lcom/google/android/location/activity/a/r;->c:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/google/android/location/activity/a/r;->t:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 75
    :cond_0
    new-instance v0, Lcom/google/android/location/activity/a/s;

    sget-object v1, Lcom/google/android/location/activity/a/t;->g:Lcom/google/android/location/activity/a/t;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/a/s;-><init>(Lcom/google/android/location/activity/a/t;I)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 79
    :cond_1
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/google/android/location/activity/a/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/a/n;

    .line 81
    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/a/n;->a(Lcom/google/android/location/activity/a/r;)Lcom/google/android/location/activity/a/s;

    move-result-object v2

    .line 82
    iget-object v0, v2, Lcom/google/android/location/activity/a/s;->a:Lcom/google/android/location/activity/a/t;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 83
    if-nez v0, :cond_2

    .line 84
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 88
    :goto_2
    iget-object v2, v2, Lcom/google/android/location/activity/a/s;->a:Lcom/google/android/location/activity/a/t;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 92
    :cond_3
    sget-boolean v0, Lcom/google/android/location/activity/a/w;->a:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/location/activity/a/t;->d:Lcom/google/android/location/activity/a/t;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 93
    :cond_4
    sget-object v0, Lcom/google/android/location/activity/a/t;->e:Lcom/google/android/location/activity/a/t;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 94
    if-nez v0, :cond_8

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 97
    :goto_3
    sget-object v0, Lcom/google/android/location/activity/a/t;->f:Lcom/google/android/location/activity/a/t;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 98
    if-nez v0, :cond_5

    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 101
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 102
    if-eqz v0, :cond_6

    .line 103
    sget-object v1, Lcom/google/android/location/activity/a/t;->d:Lcom/google/android/location/activity/a/t;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v4, v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    iget-object v1, p0, Lcom/google/android/location/activity/a/w;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    .line 109
    new-instance v4, Lcom/google/android/location/activity/a/s;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/a/t;

    invoke-direct {v4, v0, v1}, Lcom/google/android/location/activity/a/s;-><init>(Lcom/google/android/location/activity/a/t;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 111
    :cond_7
    sget-object v0, Lcom/google/android/location/activity/a/w;->c:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v2

    .line 112
    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    goto :goto_3
.end method
