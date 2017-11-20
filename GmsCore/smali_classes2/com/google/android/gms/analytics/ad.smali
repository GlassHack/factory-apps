.class final Lcom/google/android/gms/analytics/ad;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/y;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/y;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/android/gms/analytics/ad;->a:Lcom/google/android/gms/analytics/y;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/y;B)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/ad;-><init>(Lcom/google/android/gms/analytics/y;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/gms/analytics/ad;->a:Lcom/google/android/gms/analytics/y;

    iget-object v0, v0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    sget-object v1, Lcom/google/android/gms/analytics/ab;->a:Lcom/google/android/gms/analytics/ab;

    if-ne v0, v1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/google/android/gms/analytics/ad;->a:Lcom/google/android/gms/analytics/y;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/y;->g()V

    .line 430
    :cond_0
    return-void
.end method
