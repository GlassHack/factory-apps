.class public Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/delegate/b;


# instance fields
.field final b:I

.field c:Z

.field d:Z

.field e:Ljava/util/List;

.field f:Landroid/os/Bundle;

.field public final g:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/delegate/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/delegate/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->a:Lcom/google/android/gms/auth/firstparty/delegate/b;

    return-void
.end method

.method constructor <init>(IZZLjava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->b:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->c:Z

    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->d:Z

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->f:Landroid/os/Bundle;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->g:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->h:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/delegate/b;->a(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;Landroid/os/Parcel;I)V

    return-void
.end method
