.class public Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/e;

.field private static final pZ:Ljava/lang/String;


# instance fields
.field rN:Z

.field rO:Ljava/lang/String;

.field rP:Z

.field rQ:Z

.field rR:Z

.field rS:Z

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

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->pZ:Ljava/lang/String;

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

    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->rN:Z

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->rO:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->rP:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->rQ:Z

    iput-boolean p6, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->rR:Z

    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->rS:Z

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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/e;->a(Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Landroid/os/Parcel;I)V

    return-void
.end method
