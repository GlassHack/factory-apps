.class public Lcom/google/android/gms/auth/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/gms/auth/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/ae;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/ae;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/a/c;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/google/android/gms/auth/ae;->b:Lcom/google/android/gms/auth/a/c;

    .line 202
    return-void
.end method

.method private a(Landroid/os/Bundle;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 309
    const-string v0, "callback_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 310
    if-eqz v0, :cond_2

    .line 311
    iget-object v1, p0, Lcom/google/android/gms/auth/ae;->b:Lcom/google/android/gms/auth/a/c;

    iget v1, v1, Lcom/google/android/gms/auth/a/c;->e:I

    if-eq v1, p2, :cond_1

    .line 314
    iget-object v1, p0, Lcom/google/android/gms/auth/ae;->b:Lcom/google/android/gms/auth/a/c;

    iget-object v1, v1, Lcom/google/android/gms/auth/a/c;->b:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 318
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 319
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v1, :cond_0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback broadcasts cannot be targeted to private Google Play Services components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_2
    return-void

    .line 330
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given callback Intent is not serializable using getUri()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/google/android/gms/auth/firstparty/shared/k;)Z
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->q:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->r:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->s:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->t:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->u:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->v:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->w:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 18

    .prologue
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gms/auth/ae;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " service cannot be null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gms/auth/ae;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " options cannot be null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->c()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/ae;->a(Landroid/os/Bundle;I)V

    .line 214
    const-string v2, "sync_extras"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "sync_extras"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    new-instance v10, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/ae;->b:Lcom/google/android/gms/auth/a/c;

    iget-object v2, v2, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-direct {v10, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    .line 219
    const/4 v2, 0x0

    .line 224
    const-string v3, "^^_account_id_^^"

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 225
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gms/auth/ae;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getting account id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 230
    const-string v4, "authtoken"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :goto_0
    return-object v2

    .line 214
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given sync request paramaters are not valid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_1
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gms/auth/ae;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no account id, fetching token to refresh account id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v2, 0x1

    move v3, v2

    .line 251
    :goto_1
    const/4 v2, 0x0

    .line 252
    const-string v4, "request_visible_actions"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 253
    if-eqz v4, :cond_2

    .line 254
    new-instance v2, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_2
    new-instance v4, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v2

    .line 260
    invoke-virtual {v10, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v4

    .line 261
    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c()Ljava/lang/String;

    move-result-object v11

    .line 262
    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v2

    .line 263
    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->t()Z

    move-result v5

    .line 264
    if-nez v2, :cond_1a

    .line 265
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->g:Lcom/google/android/gms/auth/firstparty/shared/k;

    move-object v4, v2

    .line 267
    :goto_2
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->c()I

    move-result v12

    if-nez v11, :cond_16

    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->T:Ljava/lang/String;

    invoke-virtual {v8, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->l:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->p:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->y:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->M:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->n:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v4}, Lcom/google/android/gms/auth/ae;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_3
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/ae;->b:Lcom/google/android/gms/auth/a/c;

    iget-object v6, v2, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    new-instance v7, Lcom/google/android/gms/auth/e;

    invoke-direct {v7, v6}, Lcom/google/android/gms/auth/e;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const-string v13, "request_visible_actions"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    new-instance v2, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    const/4 v14, 0x0

    invoke-direct {v2, v13, v14}, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v13, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    invoke-direct {v13}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    move-result-object v2

    const-string v13, "suppressProgressScreen"

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v2, v13}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a(Z)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/google/android/gms/auth/e;->a(Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "authAccount"

    aput-object v14, v7, v13

    const/4 v13, 0x1

    const-string v14, "booleanResult"

    aput-object v14, v7, v13

    const/4 v13, 0x2

    const-string v14, "accountType"

    aput-object v14, v7, v13

    const/4 v13, 0x3

    const-string v14, "authtoken"

    aput-object v14, v7, v13

    const/4 v13, 0x4

    const-string v14, "retry"

    aput-object v14, v7, v13

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-static {v6, v2, v7, v0}, Lcom/google/android/gms/auth/FilteringRedirectActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/util/List;Landroid/accounts/AccountAuthenticatorResponse;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/android/gms/auth/UnpackingRedirectActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v4}, Lcom/google/android/gms/auth/ae;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "GLSActivity"

    const-string v6, "Broadcasting to DMAgent to sync for user %s with error %s."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p3, v7, v14

    const/4 v14, 0x1

    aput-object v5, v7, v14

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.google.android.apps.enterprise.dmagent.AUTO_SYNC"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.google.android.apps.enterprise.dmagent.Email"

    move-object/from16 v0, p3

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.google.android.apps.enterprise.dmagent.DmResponseStatusCode"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/common/app/GmsApplication;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    const-string v2, "handle_notification"

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->y:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-eq v4, v2, :cond_e

    const/4 v2, 0x1

    move v5, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/ae;->b:Lcom/google/android/gms/auth/a/c;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/auth/a/c;->d(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    move-object v6, v2

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/ae;->b:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/auth/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/ae;->b:Lcom/google/android/gms/auth/a/c;

    iget-object v15, v2, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/auth/u;->a()Lcom/google/android/gms/auth/u;

    move-result-object v16

    invoke-static {}, Lcom/google/android/gms/auth/u;->a()Lcom/google/android/gms/auth/u;

    move-result-object v2

    if-eqz v5, :cond_11

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/u;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/v;

    move-result-object v2

    :goto_6
    if-nez v2, :cond_19

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/auth/w;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/google/android/gms/auth/w;-><init>(Lcom/google/android/gms/auth/u;B)V

    iget-object v0, v7, Lcom/google/android/gms/auth/w;->a:Lcom/google/android/gms/auth/v;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/auth/v;->a:Ljava/lang/String;

    iget-object v2, v7, Lcom/google/android/gms/auth/w;->a:Lcom/google/android/gms/auth/v;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/google/android/gms/auth/v;->c:Ljava/lang/String;

    if-eqz v5, :cond_12

    :try_start_1
    sget-object v2, Lcom/google/android/gms/auth/y;->a:Lcom/google/android/gms/auth/y;

    :goto_7
    invoke-virtual {v7, v2}, Lcom/google/android/gms/auth/w;->a(Lcom/google/android/gms/auth/y;)Lcom/google/android/gms/auth/v;
    :try_end_1
    .catch Lcom/google/android/gms/auth/x; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move-object v7, v2

    :goto_8
    move-object/from16 v0, p4

    invoke-virtual {v7, v9, v0}, Lcom/google/android/gms/auth/v;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_8

    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "service"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "uid_key"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "package_key"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "callback_intent"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "callback_intent"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    const-string v12, "callback_intent"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v2, "authority"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "sync_extras"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "authority"

    const-string v12, "authority"

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sync_extras"

    const-string v12, "sync_extras"

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/google/android/gms/auth/v;->a(Landroid/os/Bundle;)V

    :cond_8
    const-string v2, "notification_data_key"

    iget-object v12, v7, Lcom/google/android/gms/auth/v;->a:Ljava/lang/String;

    invoke-virtual {v13, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "notification_request_list_key"

    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/google/android/gms/auth/v;->e:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v13, v2, v12}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v12, 0x10000000

    invoke-static {v15, v2, v13, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    if-eqz v5, :cond_13

    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_14

    const v2, 0x7f10001a

    invoke-virtual {v15, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-ge v5, v9, :cond_9

    const v2, 0x7f10001b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v14, v5, v9

    invoke-virtual {v15, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_9
    :goto_a
    new-instance v5, Landroid/support/v4/app/bb;

    invoke-direct {v5, v15}, Landroid/support/v4/app/bb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/support/v4/app/bb;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/support/v4/app/bb;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v2

    const v5, 0x108008a

    invoke-virtual {v2, v5}, Landroid/support/v4/app/bb;->a(I)Landroid/support/v4/app/bb;

    move-result-object v2

    iput-object v6, v2, Landroid/support/v4/app/bb;->g:Landroid/graphics/Bitmap;

    iput-object v12, v2, Landroid/support/v4/app/bb;->d:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/support/v4/app/bb;->b()Landroid/support/v4/app/bb;

    move-result-object v2

    const v5, 0x7f1002b5

    invoke-virtual {v15, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v4/app/bb;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Landroid/support/v4/app/bb;->a(J)Landroid/support/v4/app/bb;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/bb;->c()Landroid/app/Notification;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/google/android/gms/auth/u;->a(Lcom/google/android/gms/auth/v;)V

    const-string v2, "notification"

    invoke-virtual {v15, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget v6, v7, Lcom/google/android/gms/auth/v;->b:I

    invoke-virtual {v2, v6, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {}, Lcom/google/android/gms/auth/u;->a()Lcom/google/android/gms/auth/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/auth/u;->b()Z

    .line 276
    :cond_a
    :goto_b
    if-eqz v3, :cond_b

    .line 280
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 283
    const-string v3, "authtoken"

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_b
    :goto_c
    const-string v2, "GLSActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gms/auth/ae;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status: %s, result: %s, accountName: %s, callingPkg: %s, service: %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-nez v11, :cond_18

    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v2

    :goto_d
    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    const/4 v2, 0x2

    aput-object p3, v5, v2

    const/4 v2, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    const/4 v2, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const/4 v2, 0x5

    aput-object p4, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 303
    const-string v3, "GLSActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object v2, v8

    .line 305
    goto/16 :goto_0

    .line 267
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_e
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_4

    :cond_f
    instance-of v6, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_10

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_5

    :cond_10
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v16

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v1, v9}, Lcom/google/android/gms/auth/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/v;

    move-result-object v2

    goto/16 :goto_6

    :cond_12
    :try_start_2
    sget-object v2, Lcom/google/android/gms/auth/y;->b:Lcom/google/android/gms/auth/y;
    :try_end_2
    .catch Lcom/google/android/gms/auth/x; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v2

    const-string v5, "GLSActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/google/android/gms/auth/ae;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Error: Malformed NotificationData. This is a Bug."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    :cond_13
    move-object v2, v9

    goto/16 :goto_9

    :cond_14
    const v2, 0x7f10000f

    invoke-virtual {v15, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200f2

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_a

    :cond_15
    const-string v2, "userRecoveryIntent"

    invoke-virtual {v8, v2, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_b

    :cond_16
    const-string v2, "authtoken"

    invoke-virtual {v8, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "accountType"

    const-string v6, "com.google"

    invoke-virtual {v8, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "authAccount"

    move-object/from16 v0, p3

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TokenCache"

    invoke-virtual {v8, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/google/android/gms/auth/u;->a()Lcom/google/android/gms/auth/u;

    move-result-object v2

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v1, v9}, Lcom/google/android/gms/auth/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 288
    :cond_17
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/android/gms/auth/ae;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Failed to refresh account id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v2, "authtoken"

    const-string v3, ""

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 295
    :cond_18
    const-string v2, "SUCCESS"

    goto/16 :goto_d

    :cond_19
    move-object v7, v2

    goto/16 :goto_8

    :cond_1a
    move-object v4, v2

    goto/16 :goto_2

    :cond_1b
    move v3, v2

    goto/16 :goto_1
.end method
