.class final Lcom/google/android/gms/auth/firstparty/dataservice/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/ak;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;

.field final synthetic b:Lcom/google/android/gms/auth/firstparty/dataservice/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ac;->b:Lcom/google/android/gms/auth/firstparty/dataservice/u;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ac;->a:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/auth/firstparty/dataservice/ao;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ac;->a:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ao;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;

    move-result-object v0

    return-object v0
.end method
