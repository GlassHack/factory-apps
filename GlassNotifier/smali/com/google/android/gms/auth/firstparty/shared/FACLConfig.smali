.class public Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/e;

.field private static final Hv:Ljava/lang/String;


# instance fields
.field Jk:Z

.field Jl:Ljava/lang/String;

.field Jm:Z

.field Jn:Z

.field Jo:Z

.field Jp:Z

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Hv:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/e;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/e;

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;ZZZZ)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "isAllCirclesVisible"    # Z
    .param p3, "visibleEdges"    # Ljava/lang/String;
    .param p4, "isAllContactsVisible"    # Z
    .param p5, "showCircles"    # Z
    .param p6, "showContacts"    # Z
    .param p7, "hasShowCircles"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->version:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jk:Z

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jl:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jm:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jn:Z

    iput-boolean p6, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jo:Z

    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jp:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZZZZ)V
    .locals 1
    .param p1, "isAllCirclesVisible"    # Z
    .param p2, "visibleEdges"    # Ljava/lang/String;
    .param p3, "isAllContactsVisible"    # Z
    .param p4, "showCircles"    # Z
    .param p5, "showContacts"    # Z
    .param p6, "hasShowCircles"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->version:I

    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jk:Z

    if-eqz p1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jl:Ljava/lang/String;

    :goto_0
    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jm:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jn:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jo:Z

    iput-boolean p6, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jp:Z

    return-void

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jl:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShowCircles()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jn:Z

    return v0
.end method

.method public getShowContacts()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jo:Z

    return v0
.end method

.method public getVisibleEdges()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jl:Ljava/lang/String;

    return-object v0
.end method

.method public hasShowCircles()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jp:Z

    return v0
.end method

.method public isAllCirclesVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jk:Z

    return v0
.end method

.method public isAllContactsVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->Jm:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/e;->a(Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Landroid/os/Parcel;I)V

    return-void
.end method
