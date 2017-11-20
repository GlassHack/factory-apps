.class public final Lcom/google/android/gms/common/audience/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/audience/a/b;
.implements Lcom/google/android/gms/common/audience/a/c;
.implements Lcom/google/android/gms/common/audience/a/f;
.implements Lcom/google/android/gms/common/audience/a/g;


# instance fields
.field public final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/audience/a/d;-><init>(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method private c(Ljava/util/List;)Lcom/google/android/gms/common/audience/a/d;
    .locals 3

    .prologue
    .line 667
    if-nez p1, :cond_0

    .line 668
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_INITIAL_AUDIENCE"

    invoke-static {p1}, Lcom/google/android/gms/common/audience/a/d;->d(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 672
    return-object p0
.end method

.method private static d(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1036
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1037
    check-cast p0, Ljava/util/ArrayList;

    .line 1040
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/d;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    return-object p0
.end method

.method private i(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/d;
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    const-string v1, "DESCRIPTION_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    return-object p0
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/common/people/data/Audience;)Lcom/google/android/gms/common/audience/a/b;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/common/people/data/Audience;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/audience/a/d;->c(Ljava/util/List;)Lcom/google/android/gms/common/audience/a/d;

    return-object p0
.end method

.method public final synthetic a(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/b;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/audience/a/d;->h(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/util/List;)Lcom/google/android/gms/common/audience/a/b;
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    const-string v1, "INITIAL_ACL"

    invoke-static {p1}, Lcom/google/android/gms/common/audience/a/d;->d(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public final synthetic a(Z)Lcom/google/android/gms/common/audience/a/f;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    const-string v1, "ALL_CONTACTS_CHECKED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public final synthetic b(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/b;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/a/d;->d(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/util/List;)Lcom/google/android/gms/common/audience/a/f;
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/audience/a/d;->c(Ljava/util/List;)Lcom/google/android/gms/common/audience/a/d;

    return-object p0
.end method

.method public final synthetic b(Z)Lcom/google/android/gms/common/audience/a/f;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    const-string v1, "ALL_CIRCLES_CHECKED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 348
    iget-object v1, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.google.android.gms.common.acl.EXTRA_INITIAL_AUDIENCE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.google.android.gms.common.acl.EXTRA_INITIAL_AUDIENCE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string v0, "com.google.android.gms.common.acl.EXTRA_REMOVED_AUDIENCE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v0, "com.google.android.gms.common.acl.EXTRA_ADDED_AUDIENCE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v2

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic c(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/b;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/audience/a/d;->i(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Z)Lcom/google/android/gms/common/audience/a/f;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    const-string v1, "SHOW_ALL_CONTACTS_CHECKBOX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public final c()Z
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    const-string v1, "ALL_CIRCLES_CHECKED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/d;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_CLIENT_APPLICATION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    return-object p0
.end method

.method public final synthetic d(Z)Lcom/google/android/gms/common/audience/a/f;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    const-string v1, "SHOW_ALL_CIRCLES_CHECKBOX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public final d()Z
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    const-string v1, "ALL_CONTACTS_CHECKED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic e(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/f;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/audience/a/d;->i(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e(Z)Lcom/google/android/gms/common/audience/a/f;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    const-string v1, "HAS_SHOW_CIRCLES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public final synthetic f(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/f;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    const-string v1, "TITLE_LOGO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final synthetic g(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/f;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/audience/a/d;->h(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/d;

    move-result-object v0

    return-object v0
.end method
