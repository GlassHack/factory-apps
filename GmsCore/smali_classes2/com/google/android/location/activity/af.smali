.class final Lcom/google/android/location/activity/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/location/activity/ae;


# direct methods
.method constructor <init>(Lcom/google/android/location/activity/ae;Z)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/location/activity/af;->b:Lcom/google/android/location/activity/ae;

    iput-boolean p2, p0, Lcom/google/android/location/activity/af;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/location/activity/af;->b:Lcom/google/android/location/activity/ae;

    iget-object v0, v0, Lcom/google/android/location/activity/ae;->b:Lcom/google/android/location/activity/ad;

    iget-object v0, v0, Lcom/google/android/location/activity/ad;->b:Lcom/google/android/location/activity/bu;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/location/activity/af;->b:Lcom/google/android/location/activity/ae;

    iget-object v0, v0, Lcom/google/android/location/activity/ae;->b:Lcom/google/android/location/activity/ad;

    iget-object v0, v0, Lcom/google/android/location/activity/ad;->b:Lcom/google/android/location/activity/bu;

    iget-boolean v1, p0, Lcom/google/android/location/activity/af;->a:Z

    invoke-interface {v0, v1}, Lcom/google/android/location/activity/bu;->d(Z)V

    .line 111
    :cond_0
    return-void
.end method
