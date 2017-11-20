.class public final Lcom/google/android/gms/people/model/AvatarReference;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/model/b;

.field public static final SOURCE_CP2_CONTACT_ID:I = 0x3

.field public static final SOURCE_CP2_FOCUS:I = 0x2

.field public static final SOURCE_NO_AVATAR:I = 0x0

.field public static final SOURCE_PLUS_PROFILE_URL:I = 0x1


# instance fields
.field private final Hw:I

.field private final PZ:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/model/b;

    invoke-direct {v0}, Lcom/google/android/gms/people/model/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/model/AvatarReference;->CREATOR:Lcom/google/android/gms/people/model/b;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "source"    # I
    .param p3, "location"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->h(Z)V

    iput p1, p0, Lcom/google/android/gms/people/model/AvatarReference;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/people/model/AvatarReference;->Hw:I

    iput-object p3, p0, Lcom/google/android/gms/people/model/AvatarReference;->PZ:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "source"    # I
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/people/model/AvatarReference;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public static final encodeCp2ContactIdLocation(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .param p0, "cp2ContactId"    # Ljava/lang/Long;

    .prologue
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeCp2FocusLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "account"    # Ljava/lang/String;
    .param p1, "focusContactId"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/common/internal/l;->X(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->X(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/fe;->fS()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodeAccountFromCp2FocusLocation()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/people/model/AvatarReference;->Hw:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->h(Z)V

    iget-object v0, p0, Lcom/google/android/gms/people/model/AvatarReference;->PZ:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/l;->h(Z)V

    iget-object v1, p0, Lcom/google/android/gms/people/model/AvatarReference;->PZ:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final decodeContactIdFromCp2ContactIdLocation()J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/people/model/AvatarReference;->Hw:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->h(Z)V

    iget-object v0, p0, Lcom/google/android/gms/people/model/AvatarReference;->PZ:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decodeFocusContactIdFromCp2FocusLocation()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/people/model/AvatarReference;->Hw:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->h(Z)V

    iget-object v0, p0, Lcom/google/android/gms/people/model/AvatarReference;->PZ:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/l;->h(Z)V

    iget-object v1, p0, Lcom/google/android/gms/people/model/AvatarReference;->PZ:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/model/AvatarReference;->PZ:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/model/AvatarReference;->Hw:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/model/AvatarReference;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "source"

    iget v2, p0, Lcom/google/android/gms/people/model/AvatarReference;->Hw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "location"

    iget-object v2, p0, Lcom/google/android/gms/people/model/AvatarReference;->PZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/k$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/people/model/b;->a(Lcom/google/android/gms/people/model/AvatarReference;Landroid/os/Parcel;I)V

    return-void
.end method
