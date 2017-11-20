.class public Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/j;


# instance fields
.field final a:I

.field volatile b:Ljava/lang/String;

.field volatile c:Ljava/lang/String;

.field volatile d:Landroid/os/Bundle;

.field volatile e:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

.field volatile f:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

.field volatile g:Z

.field volatile h:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/auth/firstparty/delegate/j;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/delegate/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a:I

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->d:Landroid/os/Bundle;

    .line 59
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;ZLcom/google/android/gms/auth/firstparty/shared/AppDescription;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a:I

    .line 47
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->b:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->c:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->d:Landroid/os/Bundle;

    .line 50
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->e:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    .line 51
    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    .line 52
    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->g:Z

    .line 53
    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->h:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 107
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->h:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 143
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    .line 116
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->c:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
    .locals 0

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->g:Z

    .line 130
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->b:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->d:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->e:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->g:Z

    return v0
.end method

.method public final g()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->h:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 74
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/delegate/j;->a(Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;Landroid/os/Parcel;I)V

    .line 75
    return-void
.end method
