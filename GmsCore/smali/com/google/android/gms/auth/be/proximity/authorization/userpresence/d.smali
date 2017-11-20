.class public Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;


# instance fields
.field private final c:Landroid/app/KeyguardManager;

.field private final d:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

.field private final e:Ljava/util/List;

.field private final f:Ljava/lang/Object;

.field private final g:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->c:Landroid/app/KeyguardManager;

    .line 89
    invoke-static {p1}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->d:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->e:Ljava/util/List;

    .line 91
    invoke-static {p1}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/b;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->g:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->f:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->h:I

    .line 95
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;
    .locals 3

    .prologue
    .line 59
    const-class v1, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->b:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->b:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;

    .line 63
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->b:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 169
    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 172
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->c:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v1, v0

    .line 174
    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 176
    :cond_1
    iget v3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->h:I

    if-ne v0, v3, :cond_3

    .line 177
    monitor-exit v2

    .line 194
    :goto_1
    return-void

    .line 172
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 180
    :cond_3
    iput v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->h:I

    .line 181
    if-eqz v1, :cond_4

    .line 182
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->a:Ljava/lang/String;

    const-string v1, "Notifying listener(s): onUserPresent()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/f;

    .line 185
    invoke-interface {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/f;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 188
    :cond_4
    :try_start_1
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->a:Ljava/lang/String;

    const-string v1, "Notifying listener(s): onUserAbsent()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 190
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/f;

    .line 191
    invoke-interface {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/f;->a()V

    goto :goto_3

    .line 194
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->h:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/f;)V
    .locals 3

    .prologue
    .line 104
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->a(Z)V

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->g:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;->a()V

    .line 118
    iget v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->h:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->d:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->a()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x2

    .line 201
    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 202
    :try_start_0
    sget-object v3, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->a:Ljava/lang/String;

    const-string v4, "Handling user-presence detection with detection type: %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v3, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->c:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    if-ne p1, v3, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->a(Z)V

    .line 207
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/e;->a:[I

    invoke-virtual {p1}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 234
    :cond_0
    :goto_1
    monitor-exit v2

    return-void

    :cond_1
    move v0, v1

    .line 205
    goto :goto_0

    .line 210
    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->h:I

    if-ne v0, v7, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->d:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 216
    :pswitch_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->h:I

    if-ne v0, v7, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->d:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->a()V

    goto :goto_1

    .line 222
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->d:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->a()V

    goto :goto_1

    .line 227
    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->h:I

    if-eq v0, v7, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->d:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b(Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/f;)V
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->g:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;->b()V

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->d:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->b()V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->h:I

    .line 141
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
