.class final Lcom/google/android/maps/driveabout/e/v;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/e/u;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/e/u;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/v;->a:Lcom/google/android/maps/driveabout/e/u;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/v;->a:Lcom/google/android/maps/driveabout/e/u;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/e/u;->a(Lcom/google/android/maps/driveabout/e/u;Landroid/os/Message;)V

    .line 121
    return-void
.end method
