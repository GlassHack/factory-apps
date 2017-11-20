.class public final Lcom/google/android/gms/gcm/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/concurrent/Semaphore;

.field b:Lcom/google/b/a/a;

.field c:Z

.field private d:Ljava/util/List;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/bf;->d:Ljava/util/List;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/bf;->c:Z

    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 179
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 180
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 45
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v4

    .line 46
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 48
    const-string v3, "android.intent.action.USER_STOPPING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 50
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/gcm/bf;->a:Ljava/util/concurrent/Semaphore;

    .line 52
    :goto_0
    const-string v1, "GCM/UserManager"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "GCM/UserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Send user status "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    const/4 v3, 0x1

    .line 57
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 58
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/gcm/bf;->a(Ljava/util/Map;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    new-instance v6, Lcom/google/b/a/a/e;

    invoke-direct {v6}, Lcom/google/b/a/a/e;-><init>()V

    .line 61
    const-string v0, "com.google.android.gsf.gtalkservice"

    invoke-virtual {v6, v0}, Lcom/google/b/a/a/e;->d(Ljava/lang/String;)Lcom/google/b/a/a/e;

    .line 62
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v6, v0, v1}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/bf;->b:Lcom/google/b/a/a;

    invoke-virtual {v0, v6}, Lcom/google/b/a/a;->d(Lcom/google/protobuf/a/f;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/gcm/bf;->b:Lcom/google/b/a/a;

    invoke-virtual {v0}, Lcom/google/b/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.intent.action.USER_STOPPING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/gcm/bg;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gms/gcm/bg;-><init>(Lcom/google/android/gms/gcm/bf;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v0, v2

    .line 89
    :goto_2
    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 92
    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/Map;I)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 129
    invoke-static {}, Lcom/google/android/gms/gcm/f;->a()Ljava/util/List;

    move-result-object v0

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    invoke-static {}, Lcom/google/android/gms/gcm/f;->b()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/gcm/f;->a(I)I

    move-result v5

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 137
    invoke-static {v6}, Lcom/google/android/gms/gcm/f;->b(Ljava/lang/Object;)I

    move-result v7

    .line 138
    invoke-static {v6}, Lcom/google/android/gms/gcm/f;->a(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 139
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {v3, v7}, Lcom/google/android/gms/gcm/bf;->a(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    .line 141
    :cond_1
    if-eq v7, v5, :cond_0

    .line 142
    invoke-static {v4, v7}, Lcom/google/android/gms/gcm/bf;->a(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    .line 145
    :cond_2
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 146
    invoke-static {p2}, Lcom/google/android/gms/gcm/f;->a(I)I

    move-result v0

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-static {v3, v0}, Lcom/google/android/gms/gcm/bf;->a(Ljava/lang/StringBuffer;I)V

    .line 151
    :cond_3
    const/4 v0, 0x0

    .line 152
    iget-object v6, p0, Lcom/google/android/gms/gcm/bf;->d:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/android/gms/gcm/bf;->d:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    move v0, v1

    .line 155
    :cond_5
    iget v6, p0, Lcom/google/android/gms/gcm/bf;->e:I

    if-eq v6, v5, :cond_6

    iget-boolean v6, p0, Lcom/google/android/gms/gcm/bf;->c:Z

    if-eqz v6, :cond_6

    move v0, v1

    .line 159
    :cond_6
    iput-object v2, p0, Lcom/google/android/gms/gcm/bf;->d:Ljava/util/List;

    .line 160
    iput v5, p0, Lcom/google/android/gms/gcm/bf;->e:I

    .line 161
    const-string v1, "u:f"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 163
    const-string v1, "u:b"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 166
    const-string v1, "u:s"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_8
    const-string v1, "GCM/UserManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 170
    const-string v1, "GCM/UserManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UserStatus: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_9
    return v0
.end method
