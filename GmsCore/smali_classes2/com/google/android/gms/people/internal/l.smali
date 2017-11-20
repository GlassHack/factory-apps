.class public final Lcom/google/android/gms/people/internal/l;
.super Lcom/google/android/gms/common/internal/e;
.source "SourceFile"


# static fields
.field private static volatile h:Landroid/os/Bundle;

.field private static volatile i:Landroid/os/Bundle;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field private final g:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 152
    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;[Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/people/internal/l;->g:Ljava/util/HashMap;

    .line 154
    iput-object p5, p0, Lcom/google/android/gms/people/internal/l;->e:Ljava/lang/String;

    .line 155
    iput-object p6, p0, Lcom/google/android/gms/people/internal/l;->f:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/g;Lcom/google/android/gms/common/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/internal/h;

    invoke-direct {v3, p2}, Lcom/google/android/gms/common/internal/h;-><init>(Lcom/google/android/gms/common/g;)V

    new-instance v4, Lcom/google/android/gms/common/internal/k;

    invoke-direct {v4, p3}, Lcom/google/android/gms/common/internal/k;-><init>(Lcom/google/android/gms/common/h;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/people/internal/l;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method static synthetic a(ILandroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 104
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-object v2

    :cond_0
    const-string v0, "pendingIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/people/internal/l;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/people/internal/l;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 243
    monitor-enter p0

    if-nez p1, :cond_0

    .line 251
    :goto_0
    monitor-exit p0

    return-void

    .line 246
    :cond_0
    :try_start_0
    const-string v0, "use_contactables_api"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/people/internal/a/a;->a(Z)V

    .line 248
    sget-object v0, Lcom/google/android/gms/people/internal/k;->a:Lcom/google/android/gms/people/internal/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/people/internal/k;->a(Landroid/os/Bundle;)V

    .line 249
    const-string v0, "config.email_type_map"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/people/internal/l;->h:Landroid/os/Bundle;

    .line 250
    const-string v0, "config.phone_type_map"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/people/internal/l;->i:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 103
    invoke-static {p1}, Lcom/google/android/gms/people/internal/g;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/i;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/u;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 874
    invoke-super {p0}, Lcom/google/android/gms/common/internal/e;->i()V

    .line 877
    new-instance v2, Lcom/google/android/gms/people/internal/p;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/people/internal/p;-><init>(Lcom/google/android/gms/people/internal/l;Lcom/google/android/gms/common/api/i;)V

    .line 880
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/e;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/internal/f;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v0, v2, p2, v3, v4}, Lcom/google/android/gms/people/internal/f;->b(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/u;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 885
    :goto_0
    return-object v0

    .line 884
    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v1, v1}, Lcom/google/android/gms/people/internal/p;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v1

    .line 885
    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/i;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/u;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 861
    new-instance v1, Lcom/google/android/gms/people/internal/p;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/internal/p;-><init>(Lcom/google/android/gms/people/internal/l;Lcom/google/android/gms/common/api/i;)V

    .line 864
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/e;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/internal/f;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/people/internal/f;->b(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/u;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 868
    :goto_0
    return-object v0

    .line 867
    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6}, Lcom/google/android/gms/people/internal/p;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v6

    .line 868
    goto :goto_0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, "com.google.android.gms.people.service.START"

    return-object v0
.end method

.method protected final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 209
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 210
    const-string v0, "post_init_configuration"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/people/internal/l;->a(Landroid/os/Bundle;)V

    .line 213
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/e;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 215
    return-void

    .line 213
    :cond_1
    const-string v0, "post_init_resolution"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/i;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 387
    invoke-super {p0}, Lcom/google/android/gms/common/internal/e;->i()V

    .line 390
    new-instance v1, Lcom/google/android/gms/people/internal/o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/internal/o;-><init>(Lcom/google/android/gms/people/internal/l;Lcom/google/android/gms/common/api/i;)V

    .line 392
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/e;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/internal/f;

    const/4 v6, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/people/internal/f;->a(Lcom/google/android/gms/people/internal/c;ZZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v7, v7}, Lcom/google/android/gms/people/internal/o;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/common/internal/aa;Lcom/google/android/gms/common/internal/i;)V
    .locals 3

    .prologue
    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    const-string v1, "social_client_application_id"

    iget-object v2, p0, Lcom/google/android/gms/people/internal/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v1, "real_client_package_name"

    iget-object v2, p0, Lcom/google/android/gms/people/internal/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const v1, 0x5d4044

    iget-object v2, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/aa;->c(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 204
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/common/internal/g;)V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/g;)V

    .line 178
    return-void
.end method

.method public final d()V
    .locals 8

    .prologue
    .line 219
    iget-object v6, p0, Lcom/google/android/gms/people/internal/l;->g:Ljava/util/HashMap;

    monitor-enter v6

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/google/android/gms/people/internal/l;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/people/internal/n;

    .line 227
    invoke-super {p0}, Lcom/google/android/gms/common/internal/e;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/internal/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/people/internal/f;->a(Lcom/google/android/gms/people/internal/c;ZLjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    :try_start_1
    const-string v1, "PeopleClient"

    const-string v2, "Failed to unregister listener"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/people/internal/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/people/internal/l;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 236
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    invoke-super {p0}, Lcom/google/android/gms/common/internal/e;->d()V

    .line 238
    return-void

    .line 232
    :catch_1
    move-exception v0

    .line 233
    :try_start_2
    const-string v1, "PeopleClient"

    const-string v2, "PeopleService is in unexpected state"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/people/internal/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method
