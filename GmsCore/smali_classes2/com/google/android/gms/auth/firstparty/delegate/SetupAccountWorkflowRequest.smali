.class public Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/i;


# instance fields
.field final a:I

.field b:Z

.field c:Z

.field d:Ljava/util/List;

.field e:Landroid/os/Bundle;

.field public final f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/gms/auth/firstparty/delegate/i;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/delegate/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/i;

    return-void
.end method

.method constructor <init>(IZZLjava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Z)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->a:I

    .line 58
    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->b:Z

    .line 59
    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->c:Z

    .line 60
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->d:Ljava/util/List;

    .line 61
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->e:Landroid/os/Bundle;

    .line 62
    invoke-static {p6}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 63
    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->g:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->a:I

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->e:Landroid/os/Bundle;

    .line 69
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 132
    return-object p0
.end method

.method public final a(Ljava/util/Collection;)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;
    .locals 1

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->d:Ljava/util/List;

    .line 122
    :goto_0
    return-object p0

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->d:Ljava/util/List;

    goto :goto_0
.end method

.method public final a(Z)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->b:Z

    .line 78
    return-object p0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->b:Z

    return v0
.end method

.method public final b(Z)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->c:Z

    .line 105
    return-object p0
.end method

.method public final b()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->c:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->c:Z

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->e:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->g:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 161
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/delegate/i;->a(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;Landroid/os/Parcel;I)V

    .line 162
    return-void
.end method
