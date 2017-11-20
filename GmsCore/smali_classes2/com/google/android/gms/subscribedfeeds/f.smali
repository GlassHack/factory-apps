.class abstract Lcom/google/android/gms/subscribedfeeds/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/subscribedfeeds/b;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/subscribedfeeds/b;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/gms/subscribedfeeds/f;->d:Lcom/google/android/gms/subscribedfeeds/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/subscribedfeeds/b;B)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/gms/subscribedfeeds/f;-><init>(Lcom/google/android/gms/subscribedfeeds/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/subscribedfeeds/a;)V
    .locals 2

    .prologue
    .line 145
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/subscribedfeeds/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/subscribedfeeds/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/n/b/a/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Lcom/google/n/b/a/d;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 155
    :pswitch_0
    throw v0

    .line 151
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/subscribedfeeds/a;->b()V

    .line 152
    invoke-virtual {p1}, Lcom/google/android/gms/subscribedfeeds/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/subscribedfeeds/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method
