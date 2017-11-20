.class public final Lcom/google/android/gms/auth/setup/d2d/v;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/setup/d2d/f;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/auth/setup/d2d/y;

.field private b:Lcom/google/android/gms/auth/setup/d2d/a/b;

.field private c:Lcom/google/m/b/a/d/h;

.field private d:Landroid/app/ProgressDialog;

.field private e:Ljava/lang/CharSequence;

.field private f:Lcom/google/android/gms/auth/setup/d2d/g;

.field private g:Lcom/google/android/gms/auth/be/e;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->h:Z

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/v;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/auth/setup/d2d/b/k;)Lcom/google/android/gms/auth/setup/d2d/b/l;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 279
    iget-object v2, p1, Lcom/google/android/gms/auth/setup/d2d/b/k;->a:Lcom/google/android/gms/auth/setup/d2d/b/i;

    iget-object v2, v2, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    .line 281
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 282
    array-length v4, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v2, v1

    .line 283
    invoke-static {v5}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Lcom/google/android/gms/common/util/e;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 287
    if-nez v1, :cond_1

    .line 288
    const-string v1, "D2D.TargetBootstrapFragment"

    const-string v2, "Could not get SHA-1 Message Digest."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 293
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/util/g;->c([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 301
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/v;->a:Lcom/google/android/gms/auth/setup/d2d/y;

    invoke-interface {v2}, Lcom/google/android/gms/auth/setup/d2d/y;->f()Lcom/google/android/gms/d/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->getActivity()Landroid/app/Activity;

    invoke-static {}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 308
    const-string v3, "androidId"

    const-string v4, "assertionInfoHash"

    invoke-static {v3, v2, v4, v1}, Lcom/google/c/c/be;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/be;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/d/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/b/h;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/b/h;-><init>()V

    .line 314
    iput-object v2, v1, Lcom/google/android/gms/auth/setup/d2d/b/h;->a:Ljava/lang/String;

    .line 315
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/auth/setup/d2d/b/h;->c:Ljava/lang/String;

    .line 316
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/auth/setup/d2d/b/h;->b:Ljava/lang/String;

    .line 317
    const-string v2, "6111300"

    iput-object v2, v1, Lcom/google/android/gms/auth/setup/d2d/b/h;->e:Ljava/lang/String;

    .line 319
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/auth/setup/d2d/b/h;->d:Ljava/lang/String;

    .line 320
    iput-object v0, v1, Lcom/google/android/gms/auth/setup/d2d/b/h;->f:Ljava/lang/String;

    .line 322
    iget-object v0, p1, Lcom/google/android/gms/auth/setup/d2d/b/k;->a:Lcom/google/android/gms/auth/setup/d2d/b/i;

    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/i;->d:Lcom/google/android/gms/auth/setup/d2d/b/h;

    .line 323
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->g:Lcom/google/android/gms/auth/be/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/be/e;->a(Lcom/google/android/gms/auth/setup/d2d/b/k;)Lcom/google/android/gms/auth/setup/d2d/b/l;

    move-result-object v0

    :goto_2
    return-object v0

    .line 291
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_1

    .line 294
    :catch_0
    move-exception v1

    .line 295
    const-string v2, "D2D.TargetBootstrapFragment"

    const-string v3, "Could not convert assertions to bytes."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 302
    :catch_1
    move-exception v1

    .line 303
    const-string v2, "D2D.TargetBootstrapFragment"

    const-string v3, "Could not get DroidGuard snapshot."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/v;Lcom/google/android/gms/auth/setup/d2d/g;)Lcom/google/android/gms/auth/setup/d2d/g;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/v;->f:Lcom/google/android/gms/auth/setup/d2d/g;

    return-object p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->h:Z

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->dismiss()V

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->a:Lcom/google/android/gms/auth/setup/d2d/y;

    invoke-interface {v0}, Lcom/google/android/gms/auth/setup/d2d/y;->e()V

    .line 184
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->h:Z

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->dismiss()V

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->a:Lcom/google/android/gms/auth/setup/d2d/y;

    const v1, 0x7f10007e

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/setup/d2d/v;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/y;->b(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/auth/setup/d2d/a/b;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/v;->b:Lcom/google/android/gms/auth/setup/d2d/a/b;

    .line 328
    return-void
.end method

.method public final a(Lcom/google/android/gms/auth/setup/d2d/b/g;)V
    .locals 11

    .prologue
    const v10, 0x7f100085

    .line 159
    iget-object v0, p1, Lcom/google/android/gms/auth/setup/d2d/b/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p1, Lcom/google/android/gms/auth/setup/d2d/b/g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->e:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/v;->d:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/auth/setup/d2d/x;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/auth/setup/d2d/x;-><init>(Lcom/google/android/gms/auth/setup/d2d/v;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 162
    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/auth/setup/d2d/b/g;->c:Z

    if-eqz v0, :cond_2

    .line 163
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->b()V

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/auth/setup/d2d/b/g;->d:Lcom/google/android/gms/auth/setup/d2d/b/b;

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p1, Lcom/google/android/gms/auth/setup/d2d/b/g;->d:Lcom/google/android/gms/auth/setup/d2d/b/b;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/v;->g:Lcom/google/android/gms/auth/be/e;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/be/e;->a(Lcom/google/android/gms/auth/setup/d2d/b/b;)Lcom/google/android/gms/auth/setup/d2d/b/c;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/c;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->dismiss()V

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->a:Lcom/google/android/gms/auth/setup/d2d/y;

    invoke-virtual {p0, v10}, Lcom/google/android/gms/auth/setup/d2d/v;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/y;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/b/g;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/b/g;-><init>()V

    iput-object v0, v1, Lcom/google/android/gms/auth/setup/d2d/b/g;->e:Lcom/google/android/gms/auth/setup/d2d/b/c;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->f:Lcom/google/android/gms/auth/setup/d2d/g;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/g;->a(Lcom/google/android/gms/auth/setup/d2d/b/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "D2D.TargetBootstrapFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 166
    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/auth/setup/d2d/b/g;->f:Lcom/google/android/gms/auth/setup/d2d/b/k;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p1, Lcom/google/android/gms/auth/setup/d2d/b/g;->f:Lcom/google/android/gms/auth/setup/d2d/b/k;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/v;->a(Lcom/google/android/gms/auth/setup/d2d/b/k;)Lcom/google/android/gms/auth/setup/d2d/b/l;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v0, v1, Lcom/google/android/gms/auth/setup/d2d/b/l;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->dismiss()V

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->a:Lcom/google/android/gms/auth/setup/d2d/y;

    invoke-virtual {p0, v10}, Lcom/google/android/gms/auth/setup/d2d/v;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/y;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/google/android/gms/auth/setup/d2d/b/l;->a:Lcom/google/android/gms/auth/setup/d2d/b/j;

    iget-object v0, v0, Lcom/google/android/gms/auth/setup/d2d/b/j;->a:[Lcom/google/android/gms/auth/setup/d2d/b/p;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/google/android/gms/auth/setup/d2d/b/l;->a:Lcom/google/android/gms/auth/setup/d2d/b/j;

    iget-object v0, v0, Lcom/google/android/gms/auth/setup/d2d/b/j;->a:[Lcom/google/android/gms/auth/setup/d2d/b/p;

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v1, Lcom/google/android/gms/auth/setup/d2d/b/l;->a:Lcom/google/android/gms/auth/setup/d2d/b/j;

    iget-object v4, v0, Lcom/google/android/gms/auth/setup/d2d/b/j;->a:[Lcom/google/android/gms/auth/setup/d2d/b/p;

    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_9

    aget-object v6, v4, v0

    iget v7, v6, Lcom/google/android/gms/auth/setup/d2d/b/p;->b:I

    if-nez v7, :cond_8

    iget-object v7, v6, Lcom/google/android/gms/auth/setup/d2d/b/p;->a:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "name"

    iget-object v9, v6, Lcom/google/android/gms/auth/setup/d2d/b/p;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v6, Lcom/google/android/gms/auth/setup/d2d/b/p;->d:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "credential"

    iget-object v6, v6, Lcom/google/android/gms/auth/setup/d2d/b/p;->e:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const-string v8, "url"

    iget-object v6, v6, Lcom/google/android/gms/auth/setup/d2d/b/p;->d:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v7, "D2D.TargetBootstrapFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Account not OK: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/google/android/gms/auth/setup/d2d/b/p;->a:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->dismiss()V

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->a:Lcom/google/android/gms/auth/setup/d2d/y;

    invoke-virtual {p0, v10}, Lcom/google/android/gms/auth/setup/d2d/v;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/y;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    new-instance v4, Lcom/google/android/gms/auth/setup/d2d/b/g;

    invoke-direct {v4}, Lcom/google/android/gms/auth/setup/d2d/b/g;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->h:Z

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->f:Lcom/google/android/gms/auth/setup/d2d/g;

    invoke-interface {v0, v4}, Lcom/google/android/gms/auth/setup/d2d/g;->a(Lcom/google/android/gms/auth/setup/d2d/b/g;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->dismiss()V

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->a:Lcom/google/android/gms/auth/setup/d2d/y;

    iget-object v2, v1, Lcom/google/android/gms/auth/setup/d2d/b/l;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/auth/setup/d2d/b/l;->d:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v1}, Lcom/google/android/gms/auth/setup/d2d/y;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "D2D.TargetBootstrapFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public final a(Lcom/google/m/b/a/d/h;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/v;->c:Lcom/google/m/b/a/d/h;

    .line 333
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 90
    check-cast p1, Lcom/google/android/gms/auth/setup/d2d/y;

    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/v;->a:Lcom/google/android/gms/auth/setup/d2d/y;

    .line 91
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->b()V

    .line 132
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/v;->setRetainInstance(Z)V

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->b:Lcom/google/android/gms/auth/setup/d2d/a/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->c:Lcom/google/m/b/a/d/h;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->dismiss()V

    .line 102
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/be/e;

    new-instance v1, Lcom/google/android/gms/auth/a/c;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/auth/be/h;->a()Lcom/google/android/gms/auth/be/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/be/e;-><init>(Lcom/google/android/gms/auth/a/c;Lcom/google/android/gms/auth/be/h;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->g:Lcom/google/android/gms/auth/be/e;

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->b:Lcom/google/android/gms/auth/setup/d2d/a/b;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/v;->c:Lcom/google/m/b/a/d/h;

    new-instance v2, Lcom/google/android/gms/auth/setup/d2d/w;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/setup/d2d/w;-><init>(Lcom/google/android/gms/auth/setup/d2d/v;)V

    invoke-static {v0, p0, v1, v2}, Lcom/google/android/gms/auth/setup/d2d/b;->a(Lcom/google/android/gms/auth/setup/d2d/a/b;Lcom/google/android/gms/auth/setup/d2d/f;Lcom/google/m/b/a/d/h;Lcom/google/android/gms/auth/setup/d2d/c;)V

    .line 116
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->d:Landroid/app/ProgressDialog;

    .line 121
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/v;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->e:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->d:Landroid/app/ProgressDialog;

    return-object v0

    .line 121
    :cond_0
    const v0, 0x7f10007d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/v;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->h:Z

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->f:Lcom/google/android/gms/auth/setup/d2d/g;

    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->f:Lcom/google/android/gms/auth/setup/d2d/g;

    invoke-interface {v0}, Lcom/google/android/gms/auth/setup/d2d/g;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/v;->f:Lcom/google/android/gms/auth/setup/d2d/g;

    .line 155
    :cond_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string v1, "D2D.TargetBootstrapFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final onDestroyView()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/v;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 140
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 141
    return-void
.end method
