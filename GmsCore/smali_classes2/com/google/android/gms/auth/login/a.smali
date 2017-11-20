.class public Lcom/google/android/gms/auth/login/a;
.super Landroid/support/v4/app/j;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/common/audience/widgets/b;


# instance fields
.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/google/android/gms/common/acl/ScopeData;

.field private r:Lcom/google/android/gms/common/people/data/Audience;

.field private s:Lcom/google/android/gms/common/people/data/Audience;

.field private t:Lcom/google/android/gms/common/audience/widgets/AudienceView;

.field private u:Landroid/widget/RadioButton;

.field private v:Landroid/widget/RadioButton;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/j;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/acl/ScopeData;Lcom/google/android/gms/common/people/data/Audience;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/auth/login/a;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    const-string v1, "scope_description"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v1, "calling_package"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "scope_data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    const-string v1, "pacl_audience"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->o:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/common/analytics/d;->r:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    iget-object v2, p0, Lcom/google/android/gms/auth/login/a;->p:Ljava/lang/String;

    invoke-static {p0, v0, p1, v1, v2}, Lcom/google/android/gms/common/server/o;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->u:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 283
    iget-object v1, p0, Lcom/google/android/gms/auth/login/a;->v:Landroid/widget/RadioButton;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 284
    return-void

    .line 283
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Lcom/google/android/gms/common/people/data/Audience;
    .locals 5

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->q:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->e()Ljava/lang/String;

    move-result-object v1

    .line 178
    if-nez v1, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    .line 183
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/common/util/g;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/people/data/c;->a([B)Ljava/util/List;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    new-instance v2, Lcom/google/android/gms/common/people/data/a;

    invoke-direct {v2}, Lcom/google/android/gms/common/people/data/a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/people/data/a;->a(Ljava/util/Collection;)Lcom/google/android/gms/common/people/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/a;->a()Lcom/google/android/gms/common/people/data/Audience;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string v2, "AuthAudienceViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse audience from roster: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    const-string v1, "myCircles"

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/people/data/AudienceMember;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v1, Lcom/google/android/gms/common/people/data/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/people/data/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/people/data/a;->a(Ljava/util/Collection;)Lcom/google/android/gms/common/people/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/a;->a()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->t:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->u:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->t:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->u:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 211
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/auth/login/a;->b(Z)V

    .line 212
    new-instance v0, Lcom/google/android/gms/common/audience/a/d;

    const-string v1, "com.google.android.gms.common.acl.CHOOSE_ACL"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/audience/a/d;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/login/a;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/a/b;->a(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/a;->r:Lcom/google/android/gms/common/people/data/Audience;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/a/b;->a(Lcom/google/android/gms/common/people/data/Audience;)Lcom/google/android/gms/common/audience/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/a;->r:Lcom/google/android/gms/common/people/data/Audience;

    invoke-virtual {v1}, Lcom/google/android/gms/common/people/data/Audience;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/a/b;->a(Ljava/util/List;)Lcom/google/android/gms/common/audience/a/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/analytics/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/a/b;->b(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/b;

    move-result-object v0

    const v1, 0x7f100302

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/login/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/a/b;->c(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/audience/a/b;->a()Landroid/content/Intent;

    move-result-object v0

    .line 219
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/auth/login/a;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    sget-object v0, Lcom/google/android/gms/common/analytics/c;->f:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/a;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    .line 221
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/a;->f()V

    .line 329
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 246
    if-ne p1, v0, :cond_2

    .line 247
    iget-object v2, p0, Lcom/google/android/gms/auth/login/a;->t:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/login/a;->u:Landroid/widget/RadioButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/login/a;->t:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/google/android/gms/auth/login/a;->u:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 248
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    .line 249
    new-instance v2, Lcom/google/android/gms/common/audience/a/d;

    invoke-direct {v2, p3}, Lcom/google/android/gms/common/audience/a/d;-><init>(Landroid/content/Intent;)V

    .line 250
    new-instance v3, Lcom/google/android/gms/common/people/data/a;

    invoke-direct {v3}, Lcom/google/android/gms/common/people/data/a;-><init>()V

    invoke-interface {v2}, Lcom/google/android/gms/common/audience/a/c;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/people/data/a;->a(Ljava/util/Collection;)Lcom/google/android/gms/common/people/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/people/data/a;->a()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v2

    .line 252
    iput-object v2, p0, Lcom/google/android/gms/auth/login/a;->r:Lcom/google/android/gms/common/people/data/Audience;

    iget-object v2, p0, Lcom/google/android/gms/auth/login/a;->t:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/auth/login/a;->t:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    iget-object v3, p0, Lcom/google/android/gms/auth/login/a;->r:Lcom/google/android/gms/common/people/data/Audience;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a(Lcom/google/android/gms/common/people/data/Audience;)V

    iget-object v2, p0, Lcom/google/android/gms/auth/login/a;->r:Lcom/google/android/gms/common/people/data/Audience;

    invoke-static {v2}, Lcom/google/android/gms/common/people/data/e;->a(Lcom/google/android/gms/common/people/data/Audience;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/a;->b(Z)V

    .line 253
    :cond_1
    sget-object v0, Lcom/google/android/gms/common/analytics/h;->h:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/a;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    .line 259
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/j;->onActivityResult(IILandroid/content/Intent;)V

    .line 260
    return-void

    :cond_3
    move v0, v1

    .line 252
    goto :goto_0

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->r:Lcom/google/android/gms/common/people/data/Audience;

    invoke-static {v0}, Lcom/google/android/gms/common/people/data/e;->a(Lcom/google/android/gms/common/people/data/Audience;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/auth/login/a;->b(Z)V

    .line 256
    :cond_5
    sget-object v0, Lcom/google/android/gms/common/analytics/h;->g:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/a;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->t:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/a;->s:Lcom/google/android/gms/common/people/data/Audience;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a(Lcom/google/android/gms/common/people/data/Audience;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pacl_audience"

    iget-object v2, p0, Lcom/google/android/gms/auth/login/a;->s:Lcom/google/android/gms/common/people/data/Audience;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/auth/login/a;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/a;->finish()V

    .line 234
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->u:Landroid/widget/RadioButton;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->t:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    if-ne p1, v0, :cond_2

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/a;->f()V

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->v:Landroid/widget/RadioButton;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->w:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_4

    .line 203
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/a;->b(Z)V

    goto :goto_0

    .line 204
    :cond_4
    const v0, 0x7f0d0157

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 205
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "pacl_audience"

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->u:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->r:Lcom/google/android/gms/common/people/data/Audience;

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/a;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/a;->finish()V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/common/people/data/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/a;->a()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/login/a;->requestWindowFeature(I)Z

    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/a;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 88
    const-string v0, "pacl_audience"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/Audience;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a;->s:Lcom/google/android/gms/common/people/data/Audience;

    .line 89
    const-string v0, "scope_description"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a;->n:Ljava/lang/String;

    .line 90
    const-string v0, "account_name"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a;->o:Ljava/lang/String;

    .line 91
    const-string v0, "scope_data"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/acl/ScopeData;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a;->q:Lcom/google/android/gms/common/acl/ScopeData;

    .line 92
    const-string v0, "calling_package"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a;->p:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->s:Lcom/google/android/gms/common/people/data/Audience;

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/a;->e()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a;->s:Lcom/google/android/gms/common/people/data/Audience;

    .line 101
    :cond_0
    if-nez p1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->s:Lcom/google/android/gms/common/people/data/Audience;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a;->r:Lcom/google/android/gms/common/people/data/Audience;

    .line 107
    :goto_0
    const v0, 0x7f030097

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/a;->setContentView(I)V

    .line 109
    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/audience/widgets/AudienceView;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a;->t:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->t:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a(Lcom/google/android/gms/common/audience/widgets/b;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->t:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    invoke-virtual {v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a()V

    const v0, 0x7f0d0095

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a;->u:Landroid/widget/RadioButton;

    const v0, 0x7f0d017a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a;->v:Landroid/widget/RadioButton;

    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a;->w:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->t:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    iget-object v2, p0, Lcom/google/android/gms/auth/login/a;->r:Lcom/google/android/gms/common/people/data/Audience;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a(Lcom/google/android/gms/common/people/data/Audience;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->u:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->v:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->t:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->r:Lcom/google/android/gms/common/people/data/Audience;

    invoke-static {v0}, Lcom/google/android/gms/common/people/data/e;->a(Lcom/google/android/gms/common/people/data/Audience;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/a;->b(Z)V

    const v0, 0x7f0d0157

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    const v0, 0x7f0d0178

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->x:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/a;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/google/android/gms/common/k;->a(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 118
    :goto_2
    float-to-double v0, v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/util/d;->a(Landroid/app/Activity;D)V

    .line 119
    return-void

    .line 104
    :cond_1
    const-string v0, "STATE_SELECTED_AUDIENCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/Audience;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a;->r:Lcom/google/android/gms/common/people/data/Audience;

    goto/16 :goto_0

    .line 109
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 116
    :cond_3
    const v1, 0x7f0b00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    const-string v0, "STATE_SELECTED_AUDIENCE"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/a;->r:Lcom/google/android/gms/common/people/data/Audience;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    return-void
.end method
