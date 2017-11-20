.class public Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
.super Ljava/lang/Object;
.source "SyncSettingsFragment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/SyncSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncSettingsItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final adapterType:Landroid/content/SyncAdapterType;

.field public checked:Z

.field public final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SyncAdapterType;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "adapterType"    # Landroid/content/SyncAdapterType;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "checked"    # Z

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->adapterType:Landroid/content/SyncAdapterType;

    .line 214
    iput-object p2, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->label:Ljava/lang/String;

    .line 215
    iput-boolean p3, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->checked:Z

    .line 216
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;)I
    .locals 2
    .param p1, "another"    # Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->label:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 205
    check-cast p1, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->compareTo(Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;)I

    move-result v0

    return v0
.end method

.method public getSyncAdapterType()Landroid/content/SyncAdapterType;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->adapterType:Landroid/content/SyncAdapterType;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->checked:Z

    .line 228
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->label:Ljava/lang/String;

    return-object v0
.end method
