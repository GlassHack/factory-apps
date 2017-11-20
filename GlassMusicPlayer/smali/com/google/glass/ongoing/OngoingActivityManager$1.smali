.class final Lcom/google/glass/ongoing/OngoingActivityManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/os/IBinder;)Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
