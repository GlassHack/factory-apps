.class final Lcom/google/android/gms/auth/be/proximity/e;
.super Lcom/google/android/gms/auth/firstparty/proximity/e;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/auth/a/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/a/c;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/android/gms/auth/firstparty/proximity/e;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/google/android/gms/auth/be/proximity/e;->a:Lcom/google/android/gms/auth/a/c;

    .line 168
    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    const-string v1, "exception"

    new-instance v2, Lcom/google/android/gms/auth/firstparty/proximity/g;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 161
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->c()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    const-string v0, "Invalid request."

    invoke-static {v0}, Lcom/google/android/gms/auth/be/proximity/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/e;->a:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/be/proximity/b/d;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/b/c;

    move-result-object v0

    .line 191
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    move-result-object v2

    .line 192
    if-nez v2, :cond_2

    .line 193
    const-string v0, "Cannot find Permit with specified permit id."

    invoke-static {v0}, Lcom/google/android/gms/auth/be/proximity/e;->a(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/google/android/gms/auth/be/proximity/b/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "exception"

    new-instance v3, Lcom/google/android/gms/auth/firstparty/proximity/g;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 200
    :cond_2
    const/4 v1, 0x0

    .line 201
    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    .line 202
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 207
    :goto_1
    if-nez v0, :cond_4

    .line 208
    const-string v0, "Cannot find PermitRequester with specified permit access id."

    invoke-static {v0}, Lcom/google/android/gms/auth/be/proximity/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AES"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 214
    new-instance v1, Lcom/google/android/gms/auth/be/proximity/b;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/be/proximity/b;-><init>(Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;)V

    .line 218
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->c()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/be/proximity/d;->a([B)Z

    move-result v0

    if-nez v0, :cond_6

    .line 219
    const-string v0, "Invalid request."

    invoke-static {v0}, Lcom/google/android/gms/auth/be/proximity/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_5
    const-string v0, "Error when encrypting/decrypting the message."

    invoke-static {v0}, Lcom/google/android/gms/auth/be/proximity/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 223
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d()Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 224
    new-instance v3, Lcom/google/android/gms/auth/be/proximity/a;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/proximity/d;->a()[B

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/auth/be/proximity/a;-><init>([BLcom/google/android/gms/auth/firstparty/proximity/data/Permit;)V

    .line 228
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 229
    const-string v1, "authorization"

    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/proximity/c;->a()Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Lcom/google/android/gms/auth/firstparty/proximity/g; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 233
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 234
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    const-string v2, "exception"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 226
    :cond_7
    :try_start_2
    const-string v0, "Error when encrypting/decrypting the message."

    invoke-static {v0}, Lcom/google/android/gms/auth/be/proximity/e;->a(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_2
    .catch Lcom/google/android/gms/auth/firstparty/proximity/g; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method
