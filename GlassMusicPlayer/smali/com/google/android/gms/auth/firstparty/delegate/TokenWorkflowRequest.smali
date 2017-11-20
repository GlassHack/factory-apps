.class public Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/delegate/c;


# instance fields
.field final b:I

.field volatile c:Ljava/lang/String;

.field volatile d:Ljava/lang/String;

.field volatile e:Landroid/os/Bundle;

.field volatile f:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

.field volatile g:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

.field volatile h:Z

.field volatile i:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/delegate/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/delegate/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a:Lcom/google/android/gms/auth/firstparty/delegate/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->b:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->e:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;ZLcom/google/android/gms/auth/firstparty/shared/AppDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->e:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->g:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->h:Z

    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->i:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/delegate/c;->a(Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;Landroid/os/Parcel;I)V

    return-void
.end method
