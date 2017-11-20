.class public Lcom/google/android/gms/auth/TokenActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Bundle;

.field private f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/auth/v;

.field private i:Ljava/util/ArrayList;

.field private j:Lcom/google/android/gms/auth/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/TokenActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/TokenActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/TokenActivity;->b:Z

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->e:Landroid/os/Bundle;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/gms/auth/TokenActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/TokenActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Intent;Z)V
    .locals 5

    .prologue
    .line 295
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 296
    invoke-virtual {p0}, Lcom/google/android/gms/auth/TokenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 298
    const-string v2, "authAccount"

    iget-object v3, p0, Lcom/google/android/gms/auth/TokenActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v2, "service"

    iget-object v3, p0, Lcom/google/android/gms/auth/TokenActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v2, "callerExtras"

    iget-object v3, p0, Lcom/google/android/gms/auth/TokenActivity;->e:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 302
    if-eqz p2, :cond_1

    .line 303
    sget-object v2, Lcom/google/android/gms/auth/a/h;->d:Lcom/google/android/gms/auth/a/h;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/a/h;->b(Landroid/content/Intent;)V

    .line 304
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/auth/TokenActivity;->setResult(ILandroid/content/Intent;)V

    .line 306
    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 307
    if-eqz v0, :cond_0

    .line 308
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/TokenActivity;->finish()V

    .line 336
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/auth/a/h;->a(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v2

    .line 316
    if-eqz v2, :cond_2

    .line 317
    invoke-static {v2}, Lcom/google/android/gms/auth/a/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/a/h;->b(Landroid/content/Intent;)V

    .line 320
    :cond_2
    if-eqz p1, :cond_3

    .line 321
    const-string v2, "authtoken"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/google/android/gms/auth/TokenActivity;->b:Z

    if-eqz v3, :cond_3

    .line 323
    const-string v3, "authtoken"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    :cond_3
    const-string v2, "response"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 328
    if-eqz v0, :cond_4

    .line 329
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 331
    const-string v3, "retry"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    invoke-virtual {v0, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 334
    :cond_4
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/TokenActivity;->setResult(ILandroid/content/Intent;)V

    .line 335
    invoke-virtual {p0}, Lcom/google/android/gms/auth/TokenActivity;->finish()V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 128
    const-string v0, "service"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->d:Ljava/lang/String;

    .line 129
    const-string v0, "callerExtras"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->e:Landroid/os/Bundle;

    .line 130
    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->c:Ljava/lang/String;

    .line 131
    const-string v0, "is_for_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/TokenActivity;->b:Z

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->e:Landroid/os/Bundle;

    const-string v1, "request_visible_actions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->g:Ljava/lang/String;

    .line 134
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/auth/TokenActivity;)Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/auth/TokenActivity;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/auth/TokenActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/auth/TokenActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/auth/TokenActivity;)Lcom/google/android/gms/auth/a/c;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->j:Lcom/google/android/gms/auth/a/c;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 341
    if-nez p2, :cond_1

    .line 345
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/auth/TokenActivity;->a(Landroid/content/Intent;Z)V

    .line 356
    :cond_0
    return-void

    .line 347
    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/auth/TokenActivity;->a(Landroid/content/Intent;Z)V

    .line 350
    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 352
    invoke-static {v0}, Lcom/google/android/gms/auth/v;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/auth/TokenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 140
    invoke-static {}, Lcom/google/android/gms/auth/u;->a()Lcom/google/android/gms/auth/u;

    move-result-object v0

    .line 141
    new-instance v3, Lcom/google/android/gms/auth/a/c;

    invoke-direct {v3, p0}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/gms/auth/TokenActivity;->j:Lcom/google/android/gms/auth/a/c;

    .line 142
    if-eqz p1, :cond_1

    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/TokenActivity;->a(Landroid/os/Bundle;)V

    .line 146
    const-string v1, "notification_data_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_0

    .line 149
    iget-object v0, v0, Lcom/google/android/gms/auth/u;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/v;

    iput-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->h:Lcom/google/android/gms/auth/v;

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/auth/TokenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/TokenActivity;->a(Landroid/os/Bundle;)V

    .line 160
    iget-object v3, p0, Lcom/google/android/gms/auth/TokenActivity;->e:Landroid/os/Bundle;

    sget-object v4, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    const-string v4, "notification_request_list_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->i:Ljava/util/ArrayList;

    .line 171
    if-eqz v3, :cond_2

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->j:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/a/c;->a(Ljava/lang/String;)I

    move-result v4

    .line 173
    invoke-virtual {p0}, Lcom/google/android/gms/auth/TokenActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 174
    if-nez v0, :cond_5

    .line 184
    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->e:Landroid/os/Bundle;

    const-string v5, "clientPackageName"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->e:Landroid/os/Bundle;

    const-string v5, "clientPackageName"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_1
    iput-boolean v2, p0, Lcom/google/android/gms/auth/TokenActivity;->b:Z

    .line 198
    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/auth/TokenActivity;->e:Landroid/os/Bundle;

    const-string v6, "clientPackageName"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v5, p0, Lcom/google/android/gms/auth/TokenActivity;->j:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/auth/a/c;->a(Ljava/lang/String;)I

    move-result v0

    .line 200
    iget-object v5, p0, Lcom/google/android/gms/auth/TokenActivity;->j:Lcom/google/android/gms/auth/a/c;

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/gms/auth/a/a;->a(ILjava/lang/String;ILcom/google/android/gms/auth/a/c;)Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 206
    const-string v0, "GLSActivity"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    const-string v0, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gms/auth/TokenActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Handling token request from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/auth/TokenActivity;->f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/TokenActivity;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/TokenActivity;->f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->d()I

    move-result v3

    if-nez v3, :cond_6

    :cond_3
    move v0, v2

    :goto_3
    if-nez v0, :cond_8

    .line 215
    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/TokenActivity;->setResult(I)V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/gms/auth/TokenActivity;->finish()V

    goto/16 :goto_0

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->j:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->c:Ljava/lang/String;

    goto :goto_1

    .line 189
    :cond_5
    iput-boolean v1, p0, Lcom/google/android/gms/auth/TokenActivity;->b:Z

    goto :goto_2

    .line 211
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/auth/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/a/d;

    move-result-object v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_3

    .line 222
    :cond_8
    new-instance v0, Lcom/google/android/gms/auth/ad;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/ad;-><init>(Lcom/google/android/gms/auth/TokenActivity;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/ad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 280
    const-string v0, "authAccount"

    iget-object v1, p0, Lcom/google/android/gms/auth/TokenActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "service"

    iget-object v1, p0, Lcom/google/android/gms/auth/TokenActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "callerExtras"

    iget-object v1, p0, Lcom/google/android/gms/auth/TokenActivity;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 283
    const-string v0, "is_for_result"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/TokenActivity;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    iget-object v0, p0, Lcom/google/android/gms/auth/TokenActivity;->h:Lcom/google/android/gms/auth/v;

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "notification_data_key"

    iget-object v1, p0, Lcom/google/android/gms/auth/TokenActivity;->h:Lcom/google/android/gms/auth/v;

    iget-object v1, v1, Lcom/google/android/gms/auth/v;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    return-void
.end method
