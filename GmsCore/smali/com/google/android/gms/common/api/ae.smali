.class public final Lcom/google/android/gms/common/api/ae;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/support/v4/app/am;


# instance fields
.field private a:Z

.field private b:I

.field private c:Lcom/google/android/gms/common/b;

.field private final d:Landroid/os/Handler;

.field private final e:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/ae;->b:I

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/ae;->d:Landroid/os/Handler;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/ae;->e:Landroid/util/SparseArray;

    .line 389
    return-void
.end method

.method public static a(Landroid/support/v4/app/j;)Lcom/google/android/gms/common/api/ae;
    .locals 4

    .prologue
    .line 89
    const-string v0, "Must be called from main thread of process"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Landroid/support/v4/app/j;->c()Landroid/support/v4/app/o;

    move-result-object v1

    .line 95
    :try_start_0
    const-string v0, "GmsSupportLifecycleFragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/ae;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->w:Z

    if-eqz v2, :cond_1

    .line 102
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/ae;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/ae;-><init>()V

    .line 103
    invoke-virtual {v1}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v2

    const-string v3, "GmsSupportLifecycleFragment"

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/z;->b()I

    .line 104
    invoke-virtual {v1}, Landroid/support/v4/app/o;->b()Z

    .line 107
    :cond_1
    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 321
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/ae;->a:Z

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/ae;->b:I

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/ae;->c:Lcom/google/android/gms/common/b;

    .line 325
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/ae;->r()Landroid/support/v4/app/al;

    move-result-object v2

    move v0, v1

    .line 327
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/common/api/ae;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/google/android/gms/common/api/ae;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 329
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/api/ae;->c(I)Lcom/google/android/gms/common/api/af;

    move-result-object v4

    .line 330
    if-eqz v4, :cond_0

    .line 331
    iget-boolean v5, v4, Lcom/google/android/gms/common/api/af;->j:Z

    if-eqz v5, :cond_0

    iput-boolean v1, v4, Lcom/google/android/gms/common/api/af;->j:Z

    iget-boolean v5, v4, Landroid/support/v4/a/g;->d:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Landroid/support/v4/a/g;->e:Z

    if-nez v5, :cond_0

    iget-object v4, v4, Lcom/google/android/gms/common/api/af;->i:Lcom/google/android/gms/common/api/j;

    invoke-interface {v4}, Lcom/google/android/gms/common/api/j;->a()V

    .line 333
    :cond_0
    invoke-virtual {v2, v3, p0}, Landroid/support/v4/app/al;->a(ILandroid/support/v4/app/am;)Landroid/support/v4/a/g;

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_1
    return-void
.end method

.method private a(ILcom/google/android/gms/common/b;)V
    .locals 2

    .prologue
    .line 303
    const-string v0, "GmsSupportLifecycleFragment"

    const-string v1, "Unresolved error while connecting client. Stopping auto-manage."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/google/android/gms/common/api/ae;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/ag;

    .line 305
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/ae;->r()Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/al;->a(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/ae;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 307
    iget-object v0, v0, Lcom/google/android/gms/common/api/ag;->b:Lcom/google/android/gms/common/api/m;

    .line 308
    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0, p2}, Lcom/google/android/gms/common/api/m;->a(Lcom/google/android/gms/common/b;)V

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/ae;->a()V

    .line 313
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/ae;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/common/api/ae;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/ae;ILcom/google/android/gms/common/b;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/ae;->a(ILcom/google/android/gms/common/b;)V

    return-void
.end method

.method private c(I)Lcom/google/android/gms/common/api/af;
    .locals 3

    .prologue
    .line 280
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/ae;->r()Landroid/support/v4/app/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/al;->b(I)Landroid/support/v4/a/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/af;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown loader in SupportLifecycleFragment"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 235
    const/4 v1, 0x0

    .line 236
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 250
    :goto_0
    if-eqz v0, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/google/android/gms/common/api/ae;->a()V

    .line 255
    :goto_1
    return-void

    .line 240
    :pswitch_0
    iget-object v2, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-static {v2}, Lcom/google/android/gms/common/k;->a(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 245
    :pswitch_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 253
    :cond_1
    iget v0, p0, Lcom/google/android/gms/common/api/ae;->b:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/ae;->c:Lcom/google/android/gms/common/b;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/api/ae;->a(ILcom/google/android/gms/common/b;)V

    goto :goto_1

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/api/m;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 146
    const-string v0, "GoogleApiClient instance cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/common/api/ae;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already managing a GoogleApiClient with id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 150
    new-instance v0, Lcom/google/android/gms/common/api/ag;

    invoke-direct {v0, p2, p3, v1}, Lcom/google/android/gms/common/api/ag;-><init>(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/api/m;B)V

    .line 151
    iget-object v1, p0, Lcom/google/android/gms/common/api/ae;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/ae;->r()Landroid/support/v4/app/al;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/support/v4/app/al;->a(ILandroid/support/v4/app/am;)Landroid/support/v4/a/g;

    .line 156
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 147
    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 179
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/ae;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/common/api/ae;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 181
    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/ae;->c(I)Lcom/google/android/gms/common/api/af;

    move-result-object v3

    .line 183
    if-eqz v3, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/android/gms/common/api/ae;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/ag;

    .line 185
    iget-object v0, v0, Lcom/google/android/gms/common/api/ag;->a:Lcom/google/android/gms/common/api/j;

    iget-object v3, v3, Lcom/google/android/gms/common/api/af;->i:Lcom/google/android/gms/common/api/j;

    if-eq v0, v3, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/ae;->r()Landroid/support/v4/app/al;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Landroid/support/v4/app/al;->b(ILandroid/support/v4/app/am;)Landroid/support/v4/a/g;

    .line 179
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/ae;->r()Landroid/support/v4/app/al;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Landroid/support/v4/app/al;->a(ILandroid/support/v4/app/am;)Landroid/support/v4/a/g;

    goto :goto_1

    .line 193
    :cond_1
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 198
    if-eqz p1, :cond_0

    .line 199
    const-string v0, "resolving_error"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/ae;->a:Z

    .line 200
    const-string v0, "failed_client_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/ae;->b:I

    .line 201
    iget v0, p0, Lcom/google/android/gms/common/api/ae;->b:I

    if-ltz v0, :cond_0

    .line 202
    new-instance v1, Lcom/google/android/gms/common/b;

    const-string v0, "failed_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "failed_resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/ae;->c:Lcom/google/android/gms/common/b;

    .line 209
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v4/a/g;)V
    .locals 2

    .prologue
    .line 273
    iget v0, p1, Landroid/support/v4/a/g;->a:I

    iget v1, p0, Lcom/google/android/gms/common/api/ae;->b:I

    if-ne v0, v1, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/google/android/gms/common/api/ae;->a()V

    .line 276
    :cond_0
    return-void
.end method

.method public final synthetic a(Landroid/support/v4/a/g;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 36
    check-cast p2, Lcom/google/android/gms/common/b;

    invoke-virtual {p2}, Lcom/google/android/gms/common/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/support/v4/a/g;->a:I

    iget v1, p0, Lcom/google/android/gms/common/api/ae;->b:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/ae;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/support/v4/a/g;->a:I

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/ae;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/ae;->a:Z

    iput v0, p0, Lcom/google/android/gms/common/api/ae;->b:I

    iput-object p2, p0, Lcom/google/android/gms/common/api/ae;->c:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/ae;->d:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/api/ah;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/android/gms/common/api/ah;-><init>(Lcom/google/android/gms/common/api/ae;ILcom/google/android/gms/common/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a_(I)Landroid/support/v4/a/g;
    .locals 3

    .prologue
    .line 259
    new-instance v1, Lcom/google/android/gms/common/api/af;

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    iget-object v0, p0, Lcom/google/android/gms/common/api/ae;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/ag;

    iget-object v0, v0, Lcom/google/android/gms/common/api/ag;->a:Lcom/google/android/gms/common/api/j;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/af;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/j;)V

    return-object v1
.end method

.method public final b(I)Lcom/google/android/gms/common/api/j;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ae;->c(I)Lcom/google/android/gms/common/api/af;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    iget-object v0, v0, Lcom/google/android/gms/common/api/af;->i:Lcom/google/android/gms/common/api/j;

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->d()V

    .line 226
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/ae;->a:Z

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/ae;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/ae;->r()Landroid/support/v4/app/al;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/ae;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v4/app/al;->a(ILandroid/support/v4/app/am;)Landroid/support/v4/a/g;

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 214
    const-string v0, "resolving_error"

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/ae;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    iget v0, p0, Lcom/google/android/gms/common/api/ae;->b:I

    if-ltz v0, :cond_0

    .line 216
    const-string v0, "failed_client_id"

    iget v1, p0, Lcom/google/android/gms/common/api/ae;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v0, "failed_status"

    iget-object v1, p0, Lcom/google/android/gms/common/api/ae;->c:Lcom/google/android/gms/common/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/b;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    const-string v0, "failed_resolution"

    iget-object v1, p0, Lcom/google/android/gms/common/api/ae;->c:Lcom/google/android/gms/common/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/b;->d()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 220
    :cond_0
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/google/android/gms/common/api/ae;->b:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/ae;->c:Lcom/google/android/gms/common/b;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/api/ae;->a(ILcom/google/android/gms/common/b;)V

    .line 173
    return-void
.end method
