.class public Lcom/google/android/gms/common/notification/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/support/v4/app/bb;

.field private final c:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/android/gms/common/notification/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/notification/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/support/v4/app/bb;

    invoke-direct {v0, p1}, Landroid/support/v4/app/bb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/notification/b;->b:Landroid/support/v4/app/bb;

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/notification/b;->c:Lorg/json/JSONObject;

    .line 37
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/common/notification/b;)Lcom/google/android/gms/common/notification/b;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p1, Lcom/google/android/gms/common/notification/b;->c:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/notification/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/notification/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/notification/b;
    .locals 4

    .prologue
    .line 42
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    new-instance v1, Lcom/google/android/gms/common/notification/b;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/notification/b;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v2, "notify_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/notification/b;->a(J)Lcom/google/android/gms/common/notification/b;

    .line 48
    const-string v2, "max_duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/notification/b;->b(J)Lcom/google/android/gms/common/notification/b;

    .line 49
    const-string v2, "big_text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/notification/b;->a(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/notification/b;

    .line 50
    const-string v2, "content_text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/notification/b;->b(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/notification/b;

    .line 51
    const-string v2, "content_title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/notification/b;->c(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/notification/b;

    .line 52
    const-string v2, "key_ongoing"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/notification/b;->a(Z)Lcom/google/android/gms/common/notification/b;

    .line 53
    const-string v2, "small_icon"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/notification/b;->a(I)Lcom/google/android/gms/common/notification/b;

    .line 54
    const-string v2, "ticker"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/notification/b;->d(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/notification/b;

    .line 55
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/notification/b;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lcom/google/android/gms/common/notification/b;->a:Ljava/lang/String;

    const-string v2, "JSONException putting field into object!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/common/notification/b;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gms/common/notification/b;->b:Landroid/support/v4/app/bb;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/bb;->a(I)Landroid/support/v4/app/bb;

    .line 130
    const-string v0, "small_icon"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/notification/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    return-object p0
.end method

.method final a(J)Lcom/google/android/gms/common/notification/b;
    .locals 3

    .prologue
    .line 84
    const-string v0, "notify_time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/notification/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/notification/b;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/gms/common/notification/b;->b:Landroid/support/v4/app/bb;

    new-instance v1, Landroid/support/v4/app/ba;

    invoke-direct {v1}, Landroid/support/v4/app/ba;-><init>()V

    invoke-virtual {v1, p1}, Landroid/support/v4/app/ba;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bb;->a(Landroid/support/v4/app/bm;)Landroid/support/v4/app/bb;

    .line 106
    const-string v0, "big_text"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/notification/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/common/notification/b;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/gms/common/notification/b;->b:Landroid/support/v4/app/bb;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/bb;->a(IZ)V

    .line 124
    const-string v0, "key_ongoing"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/notification/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/common/notification/b;->c:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/support/v4/app/bb;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/common/notification/b;->b:Landroid/support/v4/app/bb;

    return-object v0
.end method

.method public final b(J)Lcom/google/android/gms/common/notification/b;
    .locals 3

    .prologue
    .line 100
    const-string v0, "max_duration"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/notification/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/notification/b;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gms/common/notification/b;->b:Landroid/support/v4/app/bb;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/bb;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    .line 112
    const-string v0, "content_text"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/notification/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    return-object p0
.end method

.method final c()J
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/gms/common/notification/b;->c:Lorg/json/JSONObject;

    const-string v1, "notify_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/notification/b;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/gms/common/notification/b;->b:Landroid/support/v4/app/bb;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/bb;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    .line 118
    const-string v0, "content_title"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/notification/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    return-object p0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gms/common/notification/b;->c:Lorg/json/JSONObject;

    const-string v1, "max_duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/notification/b;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/gms/common/notification/b;->b:Landroid/support/v4/app/bb;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/bb;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    .line 136
    const-string v0, "ticker"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/notification/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    return-object p0
.end method
