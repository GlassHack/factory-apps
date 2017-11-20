.class Lcom/google/android/gms/internal/rj$1;
.super Lcom/google/android/gms/internal/rj$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rj;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/database/Cursor;Landroid/content/Context;ILcom/google/android/gms/internal/qv;Lcom/google/android/gms/internal/qv;Ljava/util/ArrayList;Ljava/util/HashMap;ILandroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEB:Lcom/google/android/gms/internal/rj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rj;Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rj$1;->aEB:Lcom/google/android/gms/internal/rj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/rj$b;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
