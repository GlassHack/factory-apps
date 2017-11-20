.class public final Lcom/google/android/gms/common/notification/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/app/NotificationManager;

.field private final d:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/android/gms/common/notification/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/notification/a;->a:Ljava/lang/String;

    .line 25
    const-class v0, Lcom/google/android/gms/common/notification/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/notification/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/NotificationManager;Landroid/app/AlarmManager;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/gms/common/notification/a;->c:Landroid/app/NotificationManager;

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gms/common/notification/a;->d:Landroid/app/AlarmManager;

    .line 38
    return-void
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;ILcom/google/android/gms/common/notification/b;)V
    .locals 8

    .prologue
    .line 66
    invoke-static {}, Lcom/google/android/gms/common/notification/a;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/google/android/gms/common/notification/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/gms/common/notification/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/common/notification/a;->c:Landroid/app/NotificationManager;

    invoke-virtual {p3}, Lcom/google/android/gms/common/notification/b;->b()Landroid/support/v4/app/bb;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/bb;->c()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 73
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    .line 74
    const/4 v1, 0x0

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/notification/PersistentNotificationBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/google/android/gms/common/notification/a;->d:Landroid/app/AlarmManager;

    const/4 v2, 0x1

    invoke-virtual {p3}, Lcom/google/android/gms/common/notification/b;->c()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/google/android/gms/common/notification/b;->d()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 83
    return-void
.end method

.method private static b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/notification/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/app/GmsApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 99
    invoke-static {}, Lcom/google/android/gms/common/notification/a;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 132
    :cond_0
    return-void

    .line 104
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 105
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v1, v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 107
    aget-object v4, v1, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 108
    aget-object v5, v1, v13

    .line 109
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/google/android/gms/common/notification/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/notification/b;

    move-result-object v1

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/common/notification/b;->c()J

    move-result-wide v8

    sub-long v8, v6, v8

    .line 114
    invoke-virtual {v1}, Lcom/google/android/gms/common/notification/b;->d()J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-lez v10, :cond_2

    .line 116
    sget-object v1, Lcom/google/android/gms/common/notification/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Not showing expired notification with tag: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/common/notification/b;->a(J)Lcom/google/android/gms/common/notification/b;

    .line 121
    invoke-virtual {v1}, Lcom/google/android/gms/common/notification/b;->d()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/common/notification/b;->b(J)Lcom/google/android/gms/common/notification/b;

    .line 122
    invoke-direct {p0, v5, v4, v1}, Lcom/google/android/gms/common/notification/a;->a(Ljava/lang/String;ILcom/google/android/gms/common/notification/b;)V

    goto :goto_0

    .line 126
    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    const-string v2, ":"

    invoke-virtual {v0, v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 128
    aget-object v2, v0, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 129
    aget-object v0, v0, v13

    .line 130
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/common/notification/a;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gms/common/notification/a;->c:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 91
    invoke-static {}, Lcom/google/android/gms/common/notification/a;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/google/android/gms/common/notification/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/notification/b;)V
    .locals 6

    .prologue
    .line 48
    invoke-virtual {p2}, Lcom/google/android/gms/common/notification/b;->d()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Notification cannot have max duration exceeding 1 day."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/common/notification/b;->a(Landroid/content/Context;Lcom/google/android/gms/common/notification/b;)Lcom/google/android/gms/common/notification/b;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/common/notification/b;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 58
    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/notification/b;->b(J)Lcom/google/android/gms/common/notification/b;

    .line 60
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/notification/b;->a(J)Lcom/google/android/gms/common/notification/b;

    .line 62
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/common/notification/a;->a(Ljava/lang/String;ILcom/google/android/gms/common/notification/b;)V

    .line 63
    return-void
.end method
