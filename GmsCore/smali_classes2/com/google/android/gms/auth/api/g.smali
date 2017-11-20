.class final Lcom/google/android/gms/auth/api/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/api/e;


# instance fields
.field private final a:Lcom/google/android/gms/common/internal/x;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/google/android/gms/auth/api/g;->a:Lcom/google/android/gms/common/internal/x;

    .line 125
    iput p2, p0, Lcom/google/android/gms/auth/api/g;->b:I

    .line 126
    iput-object p3, p0, Lcom/google/android/gms/auth/api/g;->c:Ljava/lang/String;

    .line 127
    iput-object p4, p0, Lcom/google/android/gms/auth/api/g;->d:Ljava/lang/String;

    .line 128
    iput-object p5, p0, Lcom/google/android/gms/auth/api/g;->e:[Ljava/lang/String;

    .line 129
    return-void
.end method

.method private a(Landroid/content/Context;ILandroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    if-eqz p4, :cond_0

    .line 219
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, p4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 221
    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 224
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/auth/api/g;->a:Lcom/google/android/gms/common/internal/x;

    invoke-interface {v1, p2, p3, v0}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 138
    iget v0, p0, Lcom/google/android/gms/auth/api/g;->b:I

    iget-object v2, p0, Lcom/google/android/gms/auth/api/g;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/g;->c:Ljava/lang/String;

    invoke-static {p1, v0, v2, v4}, Lcom/google/android/gms/common/server/ClientContext;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/server/ClientContext;

    move-result-object v2

    .line 140
    if-eqz v2, :cond_0

    move v0, v1

    .line 142
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/auth/api/g;->e:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 143
    iget-object v4, p0, Lcom/google/android/gms/auth/api/g;->e:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/server/ClientContext;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v2, v3

    .line 154
    :cond_0
    if-nez v2, :cond_6

    .line 155
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/server/ClientContext;

    iget v4, p0, Lcom/google/android/gms/auth/api/g;->b:I

    iget-object v5, p0, Lcom/google/android/gms/auth/api/g;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/auth/api/g;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/g;->c:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/common/server/ClientContext;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/auth/api/g;->e:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/server/ClientContext;->a([Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/google/android/gms/auth/api/g;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/auth/api/g;->e:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 165
    new-instance v2, Lcom/google/android/gms/common/server/a/a;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/common/server/a/a;-><init>(Lcom/google/android/gms/common/server/ClientContext;Z)V

    .line 167
    invoke-interface {v2, p1}, Lcom/google/android/gms/common/server/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 175
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/server/ClientContext;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/google/android/gms/auth/q; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;->a(Lcom/google/android/gms/common/server/ClientContext;)Lcom/google/android/gms/auth/api/b;

    move-result-object v2

    .line 196
    if-nez v2, :cond_2

    .line 197
    new-instance v2, Lcom/google/android/gms/auth/api/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/google/android/gms/auth/api/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/server/ClientContext;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;->a(Lcom/google/android/gms/common/server/ClientContext;Lcom/google/android/gms/auth/api/b;)V

    .line 202
    :cond_2
    if-nez v2, :cond_5

    .line 203
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0, v3, v3}, Lcom/google/android/gms/auth/api/g;->a(Landroid/content/Context;ILandroid/os/IBinder;Landroid/content/Intent;)V

    .line 211
    :goto_2
    return-void

    .line 142
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 179
    :goto_3
    invoke-virtual {v2, p1}, Lcom/google/android/gms/common/server/ClientContext;->b(Landroid/content/Context;)V

    .line 181
    instance-of v1, v0, Lcom/google/android/gms/auth/af;

    if-eqz v1, :cond_4

    .line 182
    const/4 v1, 0x4

    check-cast v0, Lcom/google/android/gms/auth/af;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/af;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v1, v3, v0}, Lcom/google/android/gms/auth/api/g;->a(Landroid/content/Context;ILandroid/os/IBinder;Landroid/content/Intent;)V

    goto :goto_2

    .line 187
    :cond_4
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0, v3, v3}, Lcom/google/android/gms/auth/api/g;->a(Landroid/content/Context;ILandroid/os/IBinder;Landroid/content/Intent;)V

    goto :goto_2

    .line 190
    :catch_1
    move-exception v0

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0, v3, v3}, Lcom/google/android/gms/auth/api/g;->a(Landroid/content/Context;ILandroid/os/IBinder;Landroid/content/Intent;)V

    goto :goto_2

    .line 208
    :cond_5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/a;->a(Landroid/content/Context;Lcom/google/android/gms/common/server/ClientContext;)V

    .line 209
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/android/gms/auth/api/g;->a(Landroid/content/Context;ILandroid/os/IBinder;Landroid/content/Intent;)V

    goto :goto_2

    .line 177
    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_1
.end method
