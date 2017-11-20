.class abstract Lcom/google/android/gms/fitness/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/f/h;


# instance fields
.field protected final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/fitness/f/a;->a:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 105
    if-eqz v0, :cond_0

    .line 106
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/f/a;->a(Ljava/util/Collection;[Ljava/lang/String;)Z

    .line 108
    :cond_0
    return-object v1
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/f/a;->a()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 114
    invoke-static {v4, p1}, Lcom/google/android/gms/fitness/f/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 117
    if-eqz p3, :cond_2

    .line 118
    array-length v6, p3

    move v3, v1

    move v0, v1

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, p3, v3

    .line 119
    invoke-interface {v5, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 118
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 119
    goto :goto_1

    :cond_2
    move v0, v1

    .line 122
    :cond_3
    if-eqz p2, :cond_8

    .line 123
    invoke-static {v5, p2}, Lcom/google/android/gms/fitness/f/a;->a(Ljava/util/Collection;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    .line 126
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 127
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 128
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 129
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    :cond_6
    return-void

    .line 131
    :cond_7
    const-string v1, "\n"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_8
    move v1, v0

    goto :goto_2
.end method

.method private static a(Ljava/util/Collection;[Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 139
    .line 140
    array-length v3, p1

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, p1, v2

    .line 141
    if-eqz v4, :cond_1

    .line 142
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 144
    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 140
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 144
    goto :goto_1

    .line 148
    :cond_3
    return v0
.end method


# virtual methods
.method final a()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/a;->a:Landroid/content/Context;

    const-string v1, "fitness_account_scopes_v2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/String;)Ljava/util/Set;
    .locals 5

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/f/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 60
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 61
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    return-object v1
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/f/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/f/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/google/android/gms/fitness/f/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public b()Ljava/util/Set;
    .locals 5

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/f/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 40
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 41
    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_1
    return-object v1
.end method

.method final b(Ljava/lang/String;)Ljava/util/Set;
    .locals 5

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/f/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 77
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_1
    return-object v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/fitness/f/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    return-void
.end method
