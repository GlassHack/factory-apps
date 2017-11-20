.class public abstract Lcom/google/android/gms/fitness/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/f/d;


# static fields
.field private static final g:Ljava/util/Set;


# instance fields
.field protected final a:Landroid/content/Context;

.field private final h:Lcom/google/android/gms/fitness/f/o;

.field private final i:Lcom/google/android/gms/fitness/f/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/gms/fitness/f/c;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/f/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/f/b;->g:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/fitness/f/b;->a:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/google/android/gms/fitness/f/o;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/f/o;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/f/b;->h:Lcom/google/android/gms/fitness/f/o;

    .line 57
    new-instance v0, Lcom/google/android/gms/fitness/f/p;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/f/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/f/b;->i:Lcom/google/android/gms/fitness/f/p;

    .line 58
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const-string v2, "PackageName %s and DataType name %s are consistent"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    :goto_0
    return v0

    .line 222
    :cond_0
    const-string v2, "PackageName %s and DataType name %s are not consistent"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 224
    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/google/android/gms/fitness/f/b;->g:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x1388

    const-string v3, "Application needs OAuth consent from the user"

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Application;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/b;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/data/Application;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/fitness/data/Application;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Lcom/google/android/gms/fitness/f/f;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-static {v4}, Lcom/google/android/gms/fitness/f/b;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    const-string v5, "Adding Google data type: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/fitness/f/b;->i:Lcom/google/android/gms/fitness/f/p;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/fitness/f/p;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v0, "Adding shareable data type: %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v7

    invoke-static {v0, v5}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {p1, v4}, Lcom/google/android/gms/fitness/f/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    const-string v0, "Skipping Auth check for a private data type: %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v7

    invoke-static {v0, v5}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 95
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected data type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/b;->h:Lcom/google/android/gms/fitness/f/o;

    invoke-static {v1, p3}, Lcom/google/android/gms/fitness/f/o;->a(Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Ljava/util/List;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/fitness/f/b;->h:Lcom/google/android/gms/fitness/f/o;

    invoke-virtual {v1, v2, p3}, Lcom/google/android/gms/fitness/f/o;->b(Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    invoke-static {v0}, Lcom/google/android/gms/fitness/c;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/fitness/f/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/fitness/f/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/fitness/f/e;)Ljava/util/List;
    .locals 4

    .prologue
    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 168
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p3}, Lcom/google/android/gms/fitness/f/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/fitness/f/e;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 202
    const-string v0, "No-Op"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 203
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 188
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 190
    iget-object v2, p0, Lcom/google/android/gms/fitness/f/b;->a:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 107
    invoke-static {p2}, Lcom/google/android/gms/fitness/f/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "Can not have new data type named as Google data type: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {v2, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    :goto_0
    return v0

    .line 113
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/f/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 114
    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/b;->i:Lcom/google/android/gms/fitness/f/p;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/fitness/f/p;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/fitness/f/e;)Z
    .locals 1

    .prologue
    .line 123
    invoke-static {p2}, Lcom/google/android/gms/fitness/f/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/f/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/f/b;->i:Lcom/google/android/gms/fitness/f/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/fitness/f/p;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/fitness/f/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/b;->i:Lcom/google/android/gms/fitness/f/p;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/f/p;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Z
    .locals 2

    .prologue
    .line 132
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/fitness/f/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/fitness/f/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Z
    .locals 2

    .prologue
    .line 143
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/fitness/f/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/fitness/f/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Z
    .locals 2

    .prologue
    .line 155
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/fitness/f/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/fitness/f/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
