.class final Lcom/google/android/gms/auth/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/j;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

.field final synthetic b:Lcom/google/android/gms/auth/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/e;Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/gms/auth/g;->b:Lcom/google/android/gms/auth/e;

    iput-object p2, p0, Lcom/google/android/gms/auth/g;->a:Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/firstparty/delegate/f;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/auth/g;->a:Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/delegate/f;->a(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
