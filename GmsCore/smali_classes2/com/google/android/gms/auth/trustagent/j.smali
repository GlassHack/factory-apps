.class final Lcom/google/android/gms/auth/trustagent/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/i;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/j;->a:Lcom/google/android/gms/auth/trustagent/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/j;->a:Lcom/google/android/gms/auth/trustagent/i;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/i;->a:Lcom/google/android/gms/auth/trustagent/f;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/f;->a(Lcom/google/android/gms/auth/trustagent/f;)V

    .line 123
    return-void
.end method
