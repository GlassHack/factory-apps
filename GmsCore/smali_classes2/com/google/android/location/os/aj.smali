.class final Lcom/google/android/location/os/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/os/ag;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/ai;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/ai;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/location/os/aj;->a:Lcom/google/android/location/os/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/location/os/aj;->a:Lcom/google/android/location/os/ai;

    iget-object v0, v0, Lcom/google/android/location/os/ai;->c:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    return-wide v0
.end method
