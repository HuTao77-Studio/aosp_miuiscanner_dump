.class public Lmiuix/os/Environment;
.super Landroid/os/Environment;
.source "Environment.java"


# static fields
.field private static EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File; = null

.field private static final MIUI_APP_DIRECTORY:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_DIRECTORY:Ljava/io/File;

.field private static final MIUI_DATA_DIRECTORY:Ljava/io/File;

.field private static final MIUI_DIRECTORY_NAME:Ljava/lang/String; = "MIUI"

.field private static final MIUI_PRESET_APP_DIRECTORY:Ljava/io/File;

.field private static sCpuCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->MIUI_DATA_DIRECTORY:Ljava/io/File;

    .line 29
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiuix/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->MIUI_APP_DIRECTORY:Ljava/io/File;

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiuix/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "preset_apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->MIUI_PRESET_APP_DIRECTORY:Ljava/io/File;

    .line 33
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiuix/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "current"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->MIUI_CUSTOMIZED_DIRECTORY:Ljava/io/File;

    const/4 v0, 0x0

    .line 80
    sput v0, Lmiuix/os/Environment;->sCpuCount:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCpuCount()I
    .locals 6

    .line 84
    sget v0, Lmiuix/os/Environment;->sCpuCount:I

    if-nez v0, :cond_2

    const-string v0, "cpu[0-9]*"

    .line 85
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 88
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_1
    sput v4, Lmiuix/os/Environment;->sCpuCount:I

    .line 94
    :cond_2
    sget v0, Lmiuix/os/Environment;->sCpuCount:I

    return v0
.end method

.method public static getExternalStorageMiuiDirectory()Ljava/io/File;
    .locals 3

    .line 38
    :try_start_0
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/io/File;

    .line 40
    invoke-static {}, Lmiuix/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "MIUI"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-static {}, Lmiuix/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 52
    :cond_1
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    return-object v0

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMiuiAppDirectory()Ljava/io/File;
    .locals 1

    .line 62
    sget-object v0, Lmiuix/os/Environment;->MIUI_APP_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustomizedDirectory()Ljava/io/File;
    .locals 1

    .line 72
    sget-object v0, Lmiuix/os/Environment;->MIUI_CUSTOMIZED_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiDataDirectory()Ljava/io/File;
    .locals 1

    .line 57
    sget-object v0, Lmiuix/os/Environment;->MIUI_DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiPresetAppDirectory()Ljava/io/File;
    .locals 1

    .line 67
    sget-object v0, Lmiuix/os/Environment;->MIUI_PRESET_APP_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .line 77
    invoke-static {}, Lmiuix/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
