.class public abstract Lcom/google/android/gms/auth/authzen/transaction/a;
.super Lcom/google/android/gms/auth/authzen/transaction/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/l;
.implements Lcom/google/android/gms/common/api/m;


# instance fields
.field protected n:Lcom/google/android/gms/common/api/j;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;-><init>()V

    return-void
.end method

.method protected static a(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 59
    invoke-static {p0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "tx_request"

    invoke-virtual {p0}, Lcom/google/m/b/a/a/p;->g()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 64
    const-string v1, "encryption_key_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 65
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/authzen/transaction/a;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 47
    if-eqz p1, :cond_0

    const v0, 0x7f0d005d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/authzen/transaction/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-static {p1}, Lcom/google/android/d/a/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0d005e

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/a;->n:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    .line 244
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 210
    sget-object v0, Lcom/google/android/gms/people/k;->e:Lcom/google/android/gms/people/c;

    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/a;->n:Lcom/google/android/gms/common/api/j;

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/a;->o:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/people/c;->a(Lcom/google/android/gms/common/api/j;Ljava/lang/String;)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/auth/authzen/transaction/b;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/authzen/transaction/b;-><init>(Lcom/google/android/gms/auth/authzen/transaction/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/y;->a(Lcom/google/android/gms/common/api/ab;)V

    .line 222
    sget-object v0, Lcom/google/android/gms/people/k;->g:Lcom/google/android/gms/people/f;

    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/a;->n:Lcom/google/android/gms/common/api/j;

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/a;->o:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/people/f;->a(Lcom/google/android/gms/common/api/j;Ljava/lang/String;)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/auth/authzen/transaction/c;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/authzen/transaction/c;-><init>(Lcom/google/android/gms/auth/authzen/transaction/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/y;->a(Lcom/google/android/gms/common/api/ab;)V

    .line 239
    return-void
.end method

.method protected final a(Lcom/google/android/gms/auth/authzen/transaction/a/e;Lcom/google/android/gms/auth/authzen/transaction/a/e;)V
    .locals 3

    .prologue
    .line 148
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->b()I

    .line 150
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/auth/authzen/transaction/a/e;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/a;->v:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/auth/authzen/transaction/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f0d0062

    invoke-virtual {p2}, Lcom/google/android/gms/auth/authzen/transaction/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Landroid/support/v4/app/z;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;

    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/z;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/support/v4/app/z;->b()I

    .line 153
    :cond_2
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 3

    .prologue
    .line 248
    const-string v0, "AuthZen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load Image due to connection failure : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/b;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    invoke-static {p1}, Lcom/google/android/d/a/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 189
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/a;->setResult(I)V

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/a;->finish()V

    .line 191
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/16 v7, 0x9f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 78
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/authzen/transaction/d;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/authzen/transaction/a;->setRequestedOrientation(I)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/authzen/transaction/a;->requestWindowFeature(I)Z

    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/a;->setContentView(I)V

    .line 84
    new-instance v3, Lcom/google/android/gms/people/o;

    invoke-direct {v3}, Lcom/google/android/gms/people/o;-><init>()V

    iput v7, v3, Lcom/google/android/gms/people/o;->a:I

    iget v0, v3, Lcom/google/android/gms/people/o;->a:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Must provide valid client application ID!"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/people/n;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/people/n;-><init>(Lcom/google/android/gms/people/o;B)V

    .line 86
    new-instance v3, Lcom/google/android/gms/common/api/k;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/people/k;->c:Lcom/google/android/gms/common/api/a;

    const-string v5, "Null options are not permitted for this Api"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v3, Lcom/google/android/gms/common/api/k;->c:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v4, Lcom/google/android/gms/common/api/a;->c:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v2, v5, :cond_1

    iget-object v6, v3, Lcom/google/android/gms/common/api/k;->b:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/ac;

    iget-object v0, v0, Lcom/google/android/gms/common/api/ac;->a:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 84
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v3, p0}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/m;)Lcom/google/android/gms/common/api/k;

    move-result-object v2

    const-string v0, "clientId must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    iput v7, v2, Lcom/google/android/gms/common/api/k;->e:I

    const-string v0, "Null activity is not permitted."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/j;

    iput-object v0, v2, Lcom/google/android/gms/common/api/k;->d:Landroid/support/v4/app/j;

    iput-object p0, v2, Lcom/google/android/gms/common/api/k;->f:Lcom/google/android/gms/common/api/m;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/k;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/a;->n:Lcom/google/android/gms/common/api/j;

    .line 94
    const v0, 0x7f0d005f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    if-eqz p1, :cond_2

    .line 98
    const-string v0, "current_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/a;->v:Ljava/lang/String;

    .line 100
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->onResume()V

    .line 115
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/authzen/transaction/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    const-string v0, "current_fragment"

    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/a;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 2

    .prologue
    const/16 v1, 0xc7

    .line 125
    invoke-super {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->onUserLeaveHint()V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/auth/authzen/transaction/a;->a(II)V

    .line 129
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/a;->setResult(I)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/a;->finish()V

    .line 131
    return-void
.end method
