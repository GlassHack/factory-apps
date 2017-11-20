.class public Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/k;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field d:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/android/gms/auth/firstparty/delegate/k;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/delegate/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->a:I

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->d:Landroid/os/Bundle;

    .line 46
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->a:I

    .line 38
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->b:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->c:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 40
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->d:Landroid/os/Bundle;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 96
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->c:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 77
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->b:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->c:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->d:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/delegate/k;->a(Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;Landroid/os/Parcel;I)V

    .line 62
    return-void
.end method
