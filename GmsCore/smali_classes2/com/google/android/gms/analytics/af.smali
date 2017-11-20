.class final Lcom/google/android/gms/analytics/af;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/y;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/y;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/google/android/gms/analytics/af;->a:Lcom/google/android/gms/analytics/y;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/y;B)V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/af;-><init>(Lcom/google/android/gms/analytics/y;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/gms/analytics/af;->a:Lcom/google/android/gms/analytics/y;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/y;->h()V

    .line 437
    return-void
.end method
